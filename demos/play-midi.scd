m = SimpleMIDIFile.read(Process.current.nowExecutingPath.dirname +/+ "theme.midi");

p = Pstretch(m.tempo.round / 60, m.p.collect { |ev|
	ev[\dur] = ev[\delta];
	ev[\sustain] = ev[\sustain] * (m.tempo.round / 60);
	ev[\delta] = nil;
});

TempoClock.tempo = m.tempo.round / 60;

q = (p <> (type: \voicerNote, voicer: v)).play;

q.stop;

TempoClock.default.dumpQueue

(
(Proto {
	~canEmbed = true;
	~asStream = { Routine({ |inval| ~embedInStream.(inval) }) };
	~prep = { |dur, pattern, tolerance = 0.001|
		~pattern = pattern;
		~dur = dur;
		~tolerance = tolerance;
		currentEnvironment
	};
	~embedInStream = { |inval|
		var	stream = ~pattern.asStream,
			durToDrop = ~dur.value(inval),
			now = 0, lastRemain = 100000, event;
		while {
			(now absdif: durToDrop) > ~tolerance and: {
				lastRemain.sign == (durToDrop - now).sign and: {
					(event = stream.next(inval.copy)).notNil
				}
			}
		} {
			lastRemain = durToDrop - now;
			now = now + event.delta;
		};
		stream.embedInStream(inval)
	};
} => PR(\dropdur));
)

a = Pchain(
	(type: \voicerNote, voicer: v),
	// don't need to scale tempo here: q already does it
	PR(\dropdur).copy.prep(([2, 22] * [4.5, 3]).sum, p)
).play;

a.stop;

a.isPlaying;




e = Event(proto: (type: \voicerNote, voicer: v));

(
p = Pbind(
	\midinote, Pseq([64, 61, 53, 61, 64, 55, 62, 64, 71, 73, 80, 81, /*86,*/ 88, 85, 88, 85, 88, 86]),
	\dur, Pstutter(Pseq([4, 1, 10000]), Pseq([0.12, 0.36, 0.12]))
).play(protoEvent: e);
)

(
p = Pbind(
	\midinote, Pseq([53, 62, 64, 88, 85, 83, 67, 74, 75, 84, 58, 88, 85, 65, 83]),
	\dur, 0.5, \legato, 1
).play(protoEvent: e);
)

(
p = Pbind(
	\midinote, Pseq([62, 64, 88, 85, 89, 88, 86, 85, 55, 74, 75]),
	// \dur, Pseq([1, 0.5, Pseq([2, Pn(1, 5)]) / 7, Pn(0.5, 3)]),
	\dur, Pseq([1, 0.5, 0.5, Pn(1, 5) / 5, Pn(0.5, 3)]),
	\legato, 1
).play(protoEvent: e);
)

(
p = Pbind(
	\midinote, Pseq([
		64, 61, 64, 61, 64,
		88, 74, 52, 64, 61,  85, 73, 50, 62,  76, 74, 88, 74, 61, 73,
		88, 86, 80, 76, 74, 73, 68, 62,
		52, 50, 56, 64, 61,
		88, 73, 62, 61
	]),
	\dur, Pseq([
		0.5, 0.5, 1, 0.5, 0.5,
		Pn(1/5, 5), Pseq([1, 1, 0.5, 0.5]) / 3, Pseq([2, Pn(1, 5)]) / 7, // Pn(1/6, 6) // Pseq([1, 0.5, 0.5], 2) / 4,
		Pn(0.125, 8),
		Pseq([4, 2, 2, 2, 2]) / 3,
		Pn(1/8, 3), 1.625
	]),
	\legato, 1
).play(protoEvent: e);
)