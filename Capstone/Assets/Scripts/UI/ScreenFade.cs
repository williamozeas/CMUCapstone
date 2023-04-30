using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class ScreenFade : MonoBehaviour
{
    private Image _fade;
    // Start is called before the first frame update
    void Start()
    {
        _fade = GetComponent<Image>();
        _fade.color = Color.black;
        StartCoroutine(FadeIn(2f));
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public IEnumerator FadeIn(float time)
    {
        float timeElapsed = 0;
        
        while (timeElapsed < time)
        {
            float percent = Mathf.Lerp(1, 0, timeElapsed / time);
            _fade.color = new Color(0, 0, 0, percent);
            timeElapsed += Time.deltaTime;
            yield return null;
        }
    }

    public void MoveToNextScene()
    {
        StartCoroutine(SceneTransition(3f));
    }

    public IEnumerator SceneTransition(float time)
    {
        float timeElapsed = 0;
        
        while (timeElapsed < time)
        {
            float percent = Mathf.Lerp(0, 1, timeElapsed / time);
            _fade.color = new Color(0, 0, 0, percent);
            timeElapsed += Time.deltaTime;
            yield return null;
        }
        
        SceneManager.LoadScene("StaffScene");
    }
}
