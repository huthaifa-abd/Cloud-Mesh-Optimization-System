using UnityEditor;

public class AutomationInit 
{

	static	void BuildClientAssets ()
	{
		BuildPipeline.BuildAssetBundles ("Assets/AssetBundles");
	}


}
