using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public enum Scale
{
    Major,
    HarmonicMinor,
    NaturalMinor,
    Pentatonic,
    Blues
}

public static class Scales
{
    private static int[] _major = { 0, 2, 4, 5, 7, 9, 11 };
    private static int[] _harmonicMinor = { 0, 2, 3, 5, 7, 8, 11 };
    private static int[] _naturalMinor = { 0, 2, 3, 5, 7, 8, 10 };
    private static int[] _pentatonic = { 0, 2, 4, 7, 9 };
    private static int[] _blues = { 0, 3, 5, 6, 7, 10 };
    
    public static int[] GetScale(Scale scale)
    {
        switch (scale)
        {
            default:
            case(Scale.Major):
            {
                return _major;
            }
            case (Scale.HarmonicMinor):
            {
                return _harmonicMinor;
            }
            case (Scale.NaturalMinor):
            {
                return _naturalMinor;
            }
            case (Scale.Pentatonic):
            {
                return _pentatonic;
            }
            case (Scale.Blues):
            {
                return _blues;
            }
        }
    }

    public static int GetNote(Scale scale, int octave, int index, int keyOffset = 0)
    {
        int[] scaleNotes = GetScale(scale);
        int degree = index % scaleNotes.Length;
        int octaveOffset = index / scaleNotes.Length;
        if (index < 0)
        {
            octaveOffset--;
        }
        octave += octaveOffset;

        int note = 12 * octave + keyOffset + scaleNotes[degree];
        return note;
    }
}
