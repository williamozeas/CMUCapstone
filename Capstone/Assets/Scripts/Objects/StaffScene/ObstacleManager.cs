using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;

public class ObstacleManager : Singleton<ObstacleManager>
{
    private float _speed = 3f;
    public float Speed => _speed;

    private List<Obstacle> obstacles;

    public float loopPoint = -150f;
    private Vector3 startPoint;
    
    // Start is called before the first frame update
    void Start()
    {
        startPoint = transform.position;
        obstacles = GetComponentsInChildren<Obstacle>().ToList();
        Material mat = obstacles[0].GetComponentInChildren<MeshRenderer>().sharedMaterial;
        for(int i = 0; i < 5; i++)
        {
            mat.SetFloat("_RippleStartTime" + i, -1000f);
        }
    }

    // Update is called once per frame
    void Update()
    {
        transform.Translate(_speed * Time.deltaTime * Vector3.left);
        if (transform.position.x < loopPoint)
        {
            transform.position = startPoint;
        }
    }
}
