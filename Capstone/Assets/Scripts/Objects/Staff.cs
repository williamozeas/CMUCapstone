using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Staff : MonoBehaviour
{
    [SerializeField] private GameObject linePrefab;
    [SerializeField] private List<Material> bgMaterials;
    
    private List<Line> lines;

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
            newLine.Init(i, lineHeight);
            lines.Add(newLine);
        }
    }

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
