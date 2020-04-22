import random
import datetime

warms = ["Warm-up bowing technique 1 (page 5)","Warm-up bowing technique 2 (page 5)","Adjusting tuning (page 6)","Warm up: fingers (page 7)","Position changes (page 8)", "Bow changes at the heel (page 8)", "Warm-up bowing technique 3 (page 9)", "String crossing (page 14)", "Rapid scales (page 15)", "Rudiments of bow distribution 1 (page 16)", "Rudiments of bow distribution 2 (page 17)", "Positions 1–4 (page 18)", "Transitional positions (page 19)"]

def warm(x):
        return warms[x]

def randwarm():
        thewarm = random.randint(0, (len(warms) - 1))
        return warm(thewarm)
        

weiters = ["First thumb position (page 20)", "Chromatic scales (page 22)", "Playing arpeggios with various fingerings (page 23)", "Rudiments of bow distribution 3 (page 24)", "Rapid changes in bow speed (page 25)", "Playing thirds (page 26)", "Playing sixths (page 27)", "Playing octaves (page 28)", "Playing staccato notes on one bow (page 29)", "Playing dotted notes (page 30)", "Position changes over an octave (page 31)"]

def weiter(x):
        return weiters[x]

def randweiter():
        theweiter = random.randint(0, (len(weiters) - 1))
        return weiter(theweiter)

tongues = ["Dynamics (page 32)", "Crescendo (page 33)", "Coordinating left and right hands (page 34)", "Bowing technique (page 35)", "Matching tone on the A string (page 36)", "Focus on bowing at the heel (page 37)", "Playing harmonics (page 38)", "Playing glissando (page 39)", "Basic practice techniques for right-left coordination (page 40)", "Left hand (page 41)", "Variable vibrato (page 42)", "Bow control (page 42)", "Balancing force between right and left arms (page 43)", "Developing tone on the C string (page 33)"]

def tongue(x):
        return tongues[x]

def randtongue():
        thetongue = random.randint(0, (len(tongues) - 1))
        return tongue(thetongue)

scales = ["C major scale (page 10)", "D flat major scale (page 10)", "D major scale (page 11)", "E flat major scale (page 11)", "E major scale (page 11)", "F major scale (page 11)", "F sharp major scale (page 11)", "G major scale (page 12)", "A flat major scale (page 12)", "A major scale (page 12)", "B flat major scale (page 12)", "B major scale (page 12)", "C minor scale (page 13)", "D minor scale (page 13)", "G minor scale (page 13)"]

def scale(x):
        return scales[x]

def randscale():
        thescale = random.randint(0, (len(scales) - 1))
        return scale(thescale)

if __name__ == "__main__":
        today = datetime.date.today()
        todaystr = (today.strftime("%d %B %Y"))
        print("\nCello exercises for " + todaystr + ":")
        """
        The book recommends:
        a. three basic warm-ups;
        b. one further intermediate warm-up;
        c. one more advanced exercise;
        d. one scale.
        """
        warm1 = random.randint(0, (len(warms) - 1))
        warm2 = random.randint(0, (len(warms) - 1))
        while warm2 == warm1:
                warm2 = random.randint(0, (len(warms) - 1))
        warm3 = random.randint(0, (len(warms) - 1))
        while warm3 == warm1 or warm3 == warm2:
                warm3 = random.randint(0, (len(warms) - 1))
        listwarms = [warm1, warm2, warm3]
        sortwarms = sorted(listwarms)
        print(warm(sortwarms[0]))
        print(warm(sortwarms[1]))
        print(warm(sortwarms[2]))
        print(randweiter())
        print(randtongue())
        print(randscale())
