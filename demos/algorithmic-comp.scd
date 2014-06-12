e = Event(proto: (type: \voicerNote, voicer: v, args: []));

(midinote: [59, 63, 73], proto: e).play;

(
p = Ppar([
	Pbind(
		\midinote, Pseq([64, 73, 76, 80, 78]),
		\dur, Pseq([1, Pn(2, inf)]),
	),
	Pbind(
		\midinote, Pseq([63, 68, 69, 81, 88]),
		\dur, 2,
	),
	Pn((midinote: 59, dur: 10), 1)
]).play(protoEvent: (proto: (amp: 0.2)));
)

p.stop;

// m = MarkovSet([
// 	[61, [63, 64], []],
// 	[63, [61, 64], []],
// 	[64, [61, 63], []]
// ], true);

f = 0.5;

(
var w = (1 ! 3).normalizeSum;

p = Pbind(
	\midinote, // \patRejectLastN.eval(
		Pwxrand(
			(0 .. 2),
			Pfunc { w },
			inf
		).collect { |n|
			w[n] = w[n] * f;
			w = w.normalizeSum;
			[61, 63, 64][n]
		},
	// 1
// ),
	\dur, 0.5,
	\sustain, 1,
	\vel, 80
);
)

q = p.play(protoEvent: e);
q.stop;

ChuckableBrowser.newWindow;

f = 0.5;

(
var w = (1 ! 3).normalizeSum;

n = Pwxrand(
	(0 .. 2),
	Pfunc { w },
	inf
).collect { |n|
	w[n] = w[n] * f;
	w = w.normalizeSum;
	[61, 63, 64][n]
};
)

// too many repeats every-other-note with the above
// try to reduce probability of the penultimate note as well
// without locking into a 1-2-3 cycle

f = 0.5;

(
var w = (1 ! 3).normalizeSum, buf = Array.newClear(2), i = 0;

n = Pwxrand(
	(0 .. 2),
	Pfunc { w },
	inf
).collect { |n|
	w[n] = w[n] * f;
	if(buf[i].notNil) {
		w[buf[i]] = w[buf[i]] * 0.5 * (f + 1);
	};
	w = w.normalizeSum;
	buf[i] = n;
	i = 1 - i;
	[61, 63, 64][n]
};
)


a = Array.fill(2, { List.new });

Pbind(\i, Pseq(#[0, 1], inf), \note, n).collect { |ev| a[ev[\i]].add(ev[\note]); ev[\note] }
.asStream.nextN(400, ());

b = (61: "cs", 63: "ds", 64: "e");

(
"#score { <<
  #new Voice #with {
    #remove \"Note_heads_engraver\"
    #consists \"Completion_heads_engraver\"
    #remove \"Rest_engraver\"
    #consists \"Completion_rest_engraver\"
  } #relative c' {
    %
  }
  #new Voice #with {
    #remove \"Note_heads_engraver\"
    #consists \"Completion_heads_engraver\"
    #remove \"Rest_engraver\"
    #consists \"Completion_rest_engraver\"
  } #relative c' {
    %
  }
>> }
".format(*(
	a.collect { |row, i|
		var dur = Pseq([
			#[8, 4][i],
			4,
			Pn("", inf)
		]).asStream,
		coll = CollStream.new;
		row.do { |n, j|
			coll << "%% ".format(b[n] ++ dur.next);
			if(j % 16 == 15) { coll << Char.nl << "    " };
		};
		coll.collection
	}
))
.replace("#", "\\");
)

p = Ppar(a.collect { |row, i|
	Pbind(
		\midinote, Pseq(row),
		\dur, Pseq([#[0.5, 1][i], Pn(1, inf)]),
		\amp, 0.2,
		\pan, i - 0.5
	)
}).play;

p.stop;

Process.current.nowExecutingPath


(
p = Pbind(
	\midinote, Pseq([79, 77, 72, 74, 76, 69, 71, 75, 65, 67, 71, 78, 88, 62, 64]),
	\dur, Pseq([Pn(0.5, 2), Pn(2/5, 5), Pn(2/7, 7), 3]),
	\legato, 1
).play(protoEvent: e);
)


// c#, no
// f#, boring
(proto: e, midinote: [55, 60, 62, 73], sustain: 2).play;

(proto: e, midinote: [55, 60, 62, 87], sustain: 2).play;

Pbind(
	\midinote, Ptuple([60, 62, Pseq([51, 52]), 12 + Pseq([65, 67])], 1),
	\dur, 2
).play(protoEvent: e);

Pbind(
	\midinote, Pseq([[51, 60, 62, 71], [47, 62, 64, 77]]),
	\dur, 2
).play(protoEvent: e);

(
p = Ppar([
	Pbind(
		\midinote, Pseq([0, 73, 83]),
		\dur, Pseq([Rest(2), 0.25, 3.25]),
		\legato, 1
	),
	Pseq([
		Pbind(
			\midinote, Pseq([0, Pseq([62, 64], 4)]),
			\dur, Pseq([Rest(0.75), 0.25, Pn(1/7, 7)]),
			\legato, 1
		),
		Pfindur(3.5, Pbind(
			\midinote, Pseq([62, 64], inf),
			\dur, 0.06,
			\legato, 1,
			\vel, 75
		))
	]),
	Pbind(
		\midinote, Pseq([41, 50, 52, 59, 61, 53, 62, 64,
			73, 72, 74, 73, 70, 68, 67, 69, 66, 64, 63, 59,
			Pseq([60, 62], 15)
		]),
		\dur, Pseq([
			Pn(1/3, 3), Pn(1/5, 5), 1 + (1/3), Pn(1/3, 2),
			Pn(0.25, 4), Pn(1/5, 5),
			Pn(0.06, inf)
		]),
		\legato, 1,
		\vel, Pif(Pkey(\dur) > 0.06, 100, 75)
	)
]).play(protoEvent: e);
)

p.stop;


p = Ppar(
	[[62, 64], [61, Rest], [64, 63]].collect { |notes, i|
		Pbind(
			\midinote, Pseq(notes, 4),
			\dur, 0.25,
			\sustain, if(i == 1) { 0.9 } { Pseq([0.24, 0.12], inf) },
			\pan, i * 0.5 - 0.5
		)
	}
).play;

p = Ppar(
	[
		[81, 80, 78, 77, 74, 71, 68, 66, 65/*, Pseq([62, 64], 4)*/],
		[77, 78, 70, 71, 73, 62, 64, 61, 62/*, Pseq([64, 63], 4)*/],
		[59, 55, 53, 51, 47, 45, 43, 41, 39/*, Pseq([61, Rest], 4)*/]
	].collect { |notes|
		Pbind(
			\midinote, Pseq(notes, 1),
			\dur, 1.5,
			\legato, 0.8
		)
	}
).play(protoEvent: e);


~ch = [61, 62, 64];

p = Pbind(
	\midinote, Pseq([~ch, [71, 83], ~ch, [71, 83], ~ch, [73, 83], ~ch, [40, 83, 85]]),
	\dur, Pseq([1, 2, Pn(2/3, 3), 1.5, 0.5, 4], 1)
).play(protoEvent: e);

d = (
	main: Ptuple([
		Pseq([61, 63], 4),
		Pseq([62, 61], 4)
	]),
	second: Ptuple([
		Pseq([61, 62], 4),
		Pseq([63, 61], 4)
	])
);

Pdefn(\n, Pseq(#[main, second], inf));
Pdefn(\n).quant

p = Pbind(
	\midinote, Pnsym(Pdefn(\n), d),
	\dur, 0.25,
	\legato, Pseq([1, 0.6], inf),
	\pan, #[-1, 1],
	\amp, 0.3
).play;

p.stop;

Pnsym(Pdefn(\n), d).asStream.nextN(10).do(_.postln); ""

(
p = Pbind(
	\midinote, Pstutter(Pseq([4, 3, 5, 3, 2]), Pseq([62, 64], inf)),
	\dur, PdurStutter(Pseq([8, 5, 9]), Pstutter(Pseq([3, 2]), Pseq([2, 1]))),
	\sustain, 0.14,
	\notediff, Pdiff(Pkey(\midinote)),
	\vel, Pseq([120, Pif(Pbinop('!=', Pkey(\notediff), 0), 120, 100)])
).play(protoEvent: e, quant: 1);
)


[64, 73, 41].collect(_.asMIDINote)

e.copy.putAll((midinote: [64], vel: 120, sustain: 0.15)).play;

e.copy.putAll((midinote: [64, 73, 41], vel: 120, sustain: 0.15)).play;

v.nodes[0].initArgs

v.nodes[0].initArgAt(\pan)