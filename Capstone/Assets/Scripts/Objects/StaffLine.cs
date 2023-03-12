using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class StaffLine : MonoBehaviour
{
    [SerializeField] private int index;
    public int Index => index;

    private Collider coll;
    public Collider Coll => coll;

    private Coroutine collisionDisableCoroutine;
    void Awake()
    {
        coll = GetComponent<Collider>();
    }

    public void OnLand()
    {
        
        //visuals
    }

    private void OnCollisionEnter(Collision collision)
    {
        if (collision.gameObject.CompareTag("Player"))
        {
            Rigidbody playerRb = GameManager.Instance.Player.Rb;
            if (playerRb.velocity.y > 0)
            {
                //moving up
                // Debug.Log( "moving up " + index);
                // Physics.IgnoreCollision(GameManager.Instance.Player.Coll, coll, true);
            }
            else
            {
                //moving down
                // Debug.Log( "moving down " + index);
                OnLand();
            }
        }
    }

    private void OnCollisionExit(Collision collision)
    {
        if (collision.gameObject.CompareTag("Player") && collision.rigidbody.velocity.magnitude > 0.2f)
        {
            // Physics.IgnoreCollision(collision.collider, coll, false);
            // Debug.Log( "Reactivating " + index);
        }
    }

    // public void DisableCollisionWithPlayer(float time)
    // {
    //     if (collisionDisableCoroutine != null)
    //     {
    //         StopCoroutine(collisionDisableCoroutine);
    //     }
    //     collisionDisableCoroutine = StartCoroutine(DisableCollisionWithPlayerCoroutine(time));
    // }
    //
    // public IEnumerator DisableCollisionWithPlayerCoroutine(float time)
    // {
    //     Physics.IgnoreCollision(Coll, GameManager.Instance.Player.Coll, true);
    //     Debug.Log("AAA");
    //     yield return new WaitForSeconds(time);
    //     Physics.IgnoreCollision(Coll, GameManager.Instance.Player.Coll, false);
    // }
}
