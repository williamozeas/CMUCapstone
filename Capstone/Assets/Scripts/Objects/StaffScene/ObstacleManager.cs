using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;

public class ObstacleManager : Singleton<ObstacleManager>
{
    private float _speed = 3f;
    public float Speed => _speed;

    private List<Obstacle> obstacles;
    
    // Start is called before the first frame update
    void Start()
    {
        obstacles = GetComponentsInChildren<Obstacle>().ToList();
    }

    // Update is called once per frame
    void Update()
    {
        transform.Translate(_speed * Time.deltaTime * Vector3.left);
    }
}
