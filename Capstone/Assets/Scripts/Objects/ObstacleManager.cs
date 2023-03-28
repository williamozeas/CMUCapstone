using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;

public class ObstacleManager : MonoBehaviour
{
    private float speed = 3f;

    private List<Obstacle> obstacles;
    
    // Start is called before the first frame update
    void Start()
    {
        obstacles = GetComponentsInChildren<Obstacle>().ToList();
    }

    // Update is called once per frame
    void Update()
    {
        transform.Translate(speed * Time.deltaTime * Vector3.left);
    }
}
