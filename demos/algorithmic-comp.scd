e = Event(proto: (type: \voicerNote, voicer: v));

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