using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ActivateButton : MonoBehaviour
{
    private Image _fade;

    private Button _button;
    // Start is called before the first frame update
    void Start()
    {
        GameManager.Instance.NextButton = this;
        _fade = GetComponent<Image>();
        _button = GetComponent<Button>();
        _button.enabled = false;
    }

    public void Activate()
    {
        StartCoroutine(FadeIn(10f, 2f));
    }
    
    public IEnumerator FadeIn(float delay, float time)
    {
        yield return new WaitForSeconds(delay);
        float timeElapsed = 0;
        
        while (timeElapsed < time)
        {
            float percent = Mathf.Lerp(0, 1, timeElapsed / time);
            _fade.color = new Color(1, 1, 1, percent);
            timeElapsed += Time.deltaTime;
            yield return null;
        }

        _button.enabled = true;
    }
}
