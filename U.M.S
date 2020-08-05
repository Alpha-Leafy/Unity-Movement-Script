# Unity-Movement-Script
For Skep: This Just  simple Movement script to use in unity.

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Movement : MonoBehaviour
{
    public Rigidbody2D rb;
    public float movespeed;

    public KeyCode left;
    public KeyCode right;
    public KeyCode up;
    public KeyCode down;

   

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {

        if (Input.GetKey(left))
        {
            rb.velocity = new Vector2(-movespeed, rb.velocity.y);
            
            

        }
        else if (Input.GetKey(right))
        {
            rb.velocity = new Vector2(movespeed, rb.velocity.y);
            
        }
        else
        {
            rb.velocity = new Vector2(0, rb.velocity.y);
            
            
        }

        if (Input.GetKey(up))
        {
            rb.velocity = new Vector2(rb.velocity.x, movespeed);
            
        } else if (Input.GetKey(down))
        {
            rb.velocity = new Vector2(rb.velocity.x, -movespeed);
            
        }
        else
        {
            rb.velocity = new Vector2(rb.velocity.x, 0);
            
        }





    }
   
}
