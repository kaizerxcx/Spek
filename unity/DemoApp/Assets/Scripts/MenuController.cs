using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;
public class MenuController : MonoBehaviour
{
    public Button menuButton;

    public Button spekPuzButton;

    public Button factorbluffButton;

    public Button nameThatSpeciesButton;

    private bool isMenuPressed = false;

    public GameObject menuCanvas;
    // Start is called before the first frame update
    void Start()
    {
        menuCanvas.SetActive(false);

        menuButton.onClick.AddListener(menuPressed);

        spekPuzButton.onClick.AddListener(() => goToScene("SpekPuz"));

        factorbluffButton.onClick.AddListener(() => goToScene("FactOrBluff"));

        nameThatSpeciesButton.onClick.AddListener(() => goToScene("NameThatSpecies"));
    }

    // Update is called once per frame
    void Update()
    {
       
    }

    public void menuPressed()
    {
        if (isMenuPressed)
        {
            menuCanvas.SetActive(false);
            isMenuPressed = false;
        }
        else
        {
            menuCanvas.SetActive(true);
            isMenuPressed = true;
        }
    }

    public void goToScene(string sceneName)
    {
        SceneManager.LoadScene(sceneName);
    }
}
