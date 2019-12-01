import random
import datetime

print("")

today = datetime.date.today()
todaystr = (today.strftime("%d %B %Y"))
print("Cello exercises for " + todaystr + ":")

warm1 = random.randint(1,13)
warm2 = random.randint(1,13)

while warm2 == warm1:
	warm2 = random.randint(1,13)

# print(warm1)
# print(warm2)

warm3 = random.randint(1,13)

while warm3 == warm1:
	warm3 = random.randint(1,13)

while warm3 == warm2:
	warm3 = random.randint(1,13)

# print(warm3)

warms = [warm1, warm2, warm3]

if 1 in warms:
	print("Warm-up bowing technique 1 (page 5)")

if 2 in warms:
	print("Warm-up bowing technique 2 (page 5)")

if 3 in warms:
	print("Adjusting tuning (page 6)")

if 4 in warms:
	print("Warm up: fingers (page 7)")

if 5 in warms:
	print("Position changes (page 8)")

if 6 in warms:
	print("Bow changes at the heel (page 8)")

if 7 in warms:
	print("Warm-up bowing technique 3 (page 9)")

if 8 in warms:
	print("String crossing (page 14)")

if 9 in warms:
	print("Rapid scales (page 15)")

if 10 in warms:
	print("Rudiments of bow distribution 1 (page 16)")

if 11 in warms:
	print("Rudiments of bow distribution 2 (page 17)")

if 12 in warms:
	print("Positions 1–4 (page 18)")

if 13 in warms:
	print("Transitional positions (page 19)")

weiter = random.randint(1,11)

if weiter == 1:
	print("First thumb position (page 20)")

if weiter == 2:
	print("Chromatic scales (page 22)")

if weiter == 3:
	print("Playing arpeggios with various fingerings (page 23)")

if weiter == 4:
	print("Rudiments of bow distribution 3 (page 24)")

if weiter == 5:
	print("Rapid changes in bow speed (page 25)")

if weiter == 6:
	print("Playing thirds (page 26)")

if weiter == 7:
	print("Playing sixths (page 27)")

if weiter == 8:
	print("Playing octaves (page 28)")

if weiter == 9:
	print("Playing staccato notes on one bow (page 29)")

if weiter == 10:
	print("Playing dotted notes (page 30)")

if weiter == 11:
	print("Position changes over an octave (page 31)")

tongue = random.randint(1,14)

if tongue == 1:
	print("Dynamics (page 32)")

if tongue == 2:
	print("Crescendo (page 33)")

if tongue == 3:
	print("Coordinating left and right hands (page 34)")

if tongue == 4:
	print("Bowing technique (page 35)")

if tongue == 5:
	print("Matching tone on the A string (page 36)")

if tongue == 6:
	print("Focus on bowing at the heel (page 37)")

if tongue == 7:
	print("Playing harmonics (page 38)")

if tongue == 8:
	print("Playing glissando (page 39)")

if tongue == 9:
	print("Basic practice techniques for right-left coordination (page 40)")

if tongue == 10:
	print("Left hand (page 41)")

if tongue == 11:
	print("Variable vibrato (page 42)")

if tongue == 12:
	print("Bow control (page 42)")

if tongue == 13:
	print("Balancing force between right and left arms (page 43)")

if tongue == 14:
	print("Developing tone on the C string (page 33)")

scale = random.randint(1,15)

if scale == 1:
	print("C major scale (page 10)")

if scale == 2:
	print("D flat major scale (page 10)")

if scale == 3:
	print("D major scale (page 11)")

if scale == 4:
	print("E flat major scale (page 11)")

if scale == 5:
	print("E major scale (page 11)")

if scale == 6:
	print("F major scale (page 11)")

if scale == 7:
	print("F sharp major scale (page 11)")

if scale == 8:
	print("G major scale (page 12)")

if scale == 9:
	print("A flat major scale (page 12)")

if scale == 10:
	print("A major scale (page 12)")

if scale == 11:
	print("B flat major scale (page 12)")

if scale == 12:
	print("B major scale (page 12)")

if scale == 13:
	print("C minor scale (page 13)")

if scale == 14:
	print("D minor scale (page 13)")

if scale == 15:
	print("G minor scale (page 13)")

print("")
