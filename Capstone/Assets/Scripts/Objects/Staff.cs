using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;

public class Staff : MonoBehaviour
{
    [SerializeField] private GameObject linePrefab;
    
    [SerializeField] private GameObject obstacles;
    
    [SerializeField] [ColorUsage(true, true)] private List<Color> bgColors;
    
    [SerializeField] private Scale _scale;
    public Scale Scale => _scale;
    
    public int octave = 4;
    public int keyOffset = 0;
    
    private List<Line> lines;
    private int _note;


    void Awake()
    {
        GameManager.Instance.SetStaff(this);
        
        float screenHeight = Camera.main.orthographicSize * 2f;
        float bottom = -Camera.main.orthographicSize;
        int numLines = GameManager.Instance.gameParams.staffLines;
        float lineHeight = screenHeight / numLines;
        
        lines = new List<Line>();
        for (int i = 0; i < numLines; i++)
        {
            float y = bottom + (i + 0.5f) * lineHeight;
            GameObject newLineObject = Instantiate(linePrefab, new Vector3(0, y, 0), Quaternion.identity, transform);
            Line newLine = newLineObject.GetComponent<Line>();
            newLine.Init(i, lineHeight, bgColors[i % bgColors.Count]);
            Debug.Log(i + " " + bgColors[i % bgColors.Count]);
            lines.Add(newLine);
        }
    }

    // Update is called once per frame
    void Update()
    {
        Line maxLine = lines.Aggregate((a, b) => a.CubeOverlapPercent > b.CubeOverlapPercent ? a : b);
        if (maxLine.CubeOverlapPercent > 0)
        {
            int note = Scales.GetNote(Scale, octave, maxLine.Index, keyOffset);
            if (note != _note)
            {
                AudioManager.Instance.SetSynthVolume(1f);
                AudioManager.Instance.SetSynthNote(note);
                _note = note;
            }
        }
        else
        {
            if (_note != -1)
            {
                _note = -1;
                AudioManager.Instance.SetSynthVolume(0f);
            }
        }
    }

    public void SetScale(Scale scale)
    {
        _scale = scale;
    }
}
