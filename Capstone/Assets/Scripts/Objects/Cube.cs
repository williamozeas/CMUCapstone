using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Cube : MonoBehaviour
{
    [SerializeField] private float moveSpeed = 2f;
    [SerializeField] private float minMovement = 0.001f;
    [SerializeField] private float bounceVelocity = 100f;
    private Rigidbody rb;

    private Vector3 startPos;

    private float bounceDir;
    private float currentBounceVelocity;
    private float timeSinceBounce = 0;
    private float totalBounceTime = 2f;
    
    // Start is called before the first frame update
    void Awake()
    {
        GameManager.Instance.SetCube(this);
        rb = GetComponent<Rigidbody>();
        startPos = transform.position;
    }

    private void FixedUpdate()
    {
        FollowCursor();
    }

    private void FollowCursor()
    {
        Vector3 cursorPos = GameManager.Instance.Cursor.transform.position;
        Vector3 currentPos = transform.position;
        float goalDeltaY = cursorPos.y - currentPos.y;
        // float deltaY = goalDeltaY * moveSpeed * Time.deltaTime;
        // if (Mathf.Abs(goalDeltaY) < Mathf.Abs(deltaY))
        // {
        //     Vector3 newPos = new Vector3(startPos.x, currentPos.y + goalDeltaY, startPos.z);
        //     // transform.position = newPos;
        //     // rb.MovePosition(newPos);
        // }
        // else if (Mathf.Abs(goalDeltaY) > minMovement)
        // {
        //     Vector3 newPos = new Vector3(startPos.x, currentPos.y + deltaY, startPos.z);
        //     // transform.position = newPos;
        //     // rb.MovePosition(newPos);
        // }
        
        //use raycasts to check for collision myself
        rb.velocity = Vector3.zero;
        Vector3 newVel = goalDeltaY * moveSpeed * Vector3.up;

        if (currentBounceVelocity > 0)
        {
            timeSinceBounce += Time.deltaTime;
            float bounceVel = Mathf.Clamp(EasingFunction.EaseInCubic(currentBounceVelocity, 0, timeSinceBounce / totalBounceTime), 0, bounceVelocity);
            newVel += new Vector3(0, bounceVel * bounceDir, 0);
            Debug.Log(bounceVel * bounceDir);
        }
        
        // float rayLength = transform.lossyScale.x/2;
        // RaycastHit upRightRay = new RaycastHit();
        // RaycastHit downRightRay = new RaycastHit();
        // Physics.Raycast(transform.position, new Vector3(1, 1, 0), out upRightRay, rayLength,
        //     LayerMask.GetMask("Obstacle"));
        // Physics.Raycast(transform.position, new Vector3(1, -1, 0), out downRightRay, rayLength,
        //     LayerMask.GetMask("Obstacle"));
        //
        // RaycastHit upRay = new RaycastHit();
        // RaycastHit downRay = new RaycastHit();
        //
        // if (goalDeltaY > 0 && )
        // {
        //     rb.AddForce(ObstacleManager.Instance.Speed * new Vector3(-1, -1, 0) , ForceMode.VelocityChange);
        // }
        //
        // else if (goalDeltaY < 0 && )
        // {
        //     rb.AddForce(ObstacleManager.Instance.Speed * new Vector3(-1, 1, 0) , ForceMode.VelocityChange);
        // }
        // else
        {
            rb.AddForce(newVel, ForceMode.VelocityChange);
        }
        
        RaycastHit upRay = new RaycastHit();
        

        // rb.velocity = goalDeltaY * moveSpeed * Vector3.up;
    }

    private void OnCollisionEnter(Collision collision)
    {
        if (collision.gameObject.CompareTag("Obstacle"))
        {
            if (collision.transform.position.y < transform.position.y)
            {
                bounceDir = 1;
            }
            else
            {
                bounceDir = -1;
            }

            currentBounceVelocity = bounceVelocity; //change based on relative posiiton
            timeSinceBounce = 0;
        }
    }
}
