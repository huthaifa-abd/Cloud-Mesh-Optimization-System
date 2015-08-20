using DataAccessLayer;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLayer
{
    public class GeneralBusinessRepo
    {
        GeneralDataAccessRepo DataAccessObject = new GeneralDataAccessRepo();

        public string ExecuteShellCommand(string Comamnd)
        {
            return DataAccessObject.ExecuteShellCommand(Comamnd);
        }

        public string DecimateMesh(string FileName)
        {
            string BaseApplicationPath = System.AppDomain.CurrentDomain.BaseDirectory;
            string InitalBlenderProjectPath = BaseApplicationPath + @"Resources\Empty.blend";
            string DecimationScriptPath = BaseApplicationPath + @"Resources\Decmiate.py";
            string ImportObjectPath = BaseApplicationPath + @"Resources\Import\" + FileName;
            string ExportObjectPath = BaseApplicationPath + @"Resources\Export\" + FileName;
            string DecimationCommand = "blender " + InitalBlenderProjectPath + " --background --python " + DecimationScriptPath + " -- " + ExportObjectPath + " " + ImportObjectPath + " 0.5";
            return DataAccessObject.ExecuteShellCommand(DecimationCommand);
        }

        public string GenerateAssetBundel(string FileName)
        {
            string ExecutionResults = "";
            //Copy Files to Unity Project Directory
            string FilenameWtihoutExt = Path.GetFileNameWithoutExtension(FileName);
            string BaseApplicationPath = System.AppDomain.CurrentDomain.BaseDirectory;
            //Copy Obj File
            string CopyObjCommand = "Copy \"" + BaseApplicationPath + @"Resources\Export\" + FilenameWtihoutExt + ".obj\" \"" + BaseApplicationPath + @"Resources\Architecture Showcase - Asset Builder\Assets\TempModels\" + "AssetHandler.obj\" /Y ";
            //Copy 
            string CopyMtlCommand = "Copy \"" + BaseApplicationPath + @"Resources\Export\" + FilenameWtihoutExt + ".mtl\" \"" + BaseApplicationPath + @"Resources\Architecture Showcase - Asset Builder\Assets\TempModels\" + "AssetHandler.mtl\" /Y ";


            //Build Asset Bundle Command
            string BuildAssetBundle = @"unity -batchmode -projectPath " + "\"" + BaseApplicationPath + @"Resources\Architecture Showcase - Asset Builder" + "\"";

            return DataAccessObject.ExecuteShellCommand(CopyObjCommand) + Environment.NewLine + DataAccessObject.ExecuteShellCommand(CopyMtlCommand) + Environment.NewLine + DataAccessObject.ExecuteShellCommand(BuildAssetBundle);
        }
    }
}
