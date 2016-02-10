using UnityEngine;
using System.Collections;

public class Ball : MonoBehaviour {
    public float speed = 30;
	public AudioClip noise;
    int leftscore = 0, rightscore = 0;
    Vector2 dir = new Vector2(1, 0).normalized;
    void OnGUI()
    {
        GUI.Label(new Rect(Screen.width / 4, 40, 100, 100), "" + leftscore);
        GUI.Label(new Rect((3 * Screen.width) / 4, 40, 100, 100), "" + rightscore);
        if (GUI.Button (new Rect (40, 40, 55, 25), "RESET"))
        {
            leftscore = 0;
            rightscore = 0;
            dir = new Vector2(1, 0).normalized;
            GetComponent<Rigidbody2D>().velocity = (dir * 0);
            transform.position = new Vector2(25, 0);
        }
        if (GUI.Button(new Rect(240, 40, 55, 25), "PLAY"))
        {
            GetComponent<Rigidbody2D>().velocity = (dir * speed);
        }
        if (GUI.Button(new Rect(160, 40, 55, 25), "PAUSE"))
        {
            GetComponent<Rigidbody2D>().velocity = (dir * 0);
        }


    }
	// Use this for initialization
    float hitFactor(Vector2 ballPos, Vector2 racketPos, float racketHeight)
    {
        return (ballPos.y - racketPos.y) / racketHeight;
    }

	void Start ()
    {
        //initial velocity
        GetComponent<Rigidbody2D>().velocity = Vector2.right * 0;
	}


    void OnCollisionEnter2D(Collision2D col)
    {
        // col.gameObject is the racket
        // col.transform.position is the racket's position
        // col.collider is the racket's collider
        if (col.gameObject.name == "RacketLeft")
        {
            float y = hitFactor(transform.position, col.transform.position, col.collider.bounds.size.y);
            dir = new Vector2(1, y).normalized;
			GetComponent<Rigidbody2D>().velocity = dir * speed; 
			AudioSource.PlayClipAtPoint(noise, new Vector3(5, 1, 2));

        }

        if (col.gameObject.name == "RacketRight")
        {
            float y = hitFactor(transform.position, col.transform.position, col.collider.bounds.size.y);
            dir = new Vector2(-1, y).normalized;
			GetComponent<Rigidbody2D>().velocity = dir * speed;
            AudioSource.PlayClipAtPoint(noise, new Vector3(5, 1, 2));
        }

        if(col.gameObject.name == "WallLeft")
        {
            rightscore = rightscore + 1;
            dir = new Vector2(1, 0).normalized;
            GetComponent<Rigidbody2D>().velocity = (dir * speed)/3;
            transform.position = new Vector2(24, 0);
        }

        if (col.gameObject.name == "WallRight")
        {
            leftscore = leftscore + 1;
            dir = new Vector2(-1, 0).normalized;
            GetComponent<Rigidbody2D>().velocity = (dir * speed) / 3;
            transform.position = new Vector2(24, 0);
        }

    }
}
