import common
import edify_generator

def RemoveDeviceAssert(info):
  edify = info.script
  for i in xrange(len(edify.script)):
    if "ro.product" in edify.script[i]:
      edify.script[i] = ''
      return

def AddAssertions(info):
    edify = info.script
    for i in xrange(len(edify.script)):
        if " ||" in edify.script[i] and ("ro.product.device" in edify.script[i] or "ro.build.product" in edify.script[i]):
            edify.script[i] = edify.script[i].replace(" ||", ' || getprop("ro.build.product") == "ef63s" || getprop("ro.product.device") == "ef63l" || getprop("ro.build.product") == "ef63k" ||')
            return

def AddArgsForSetPermission(info):
  edify = info.script
  for i in xrange(len(edify.script)):
    if "set_perm(" in edify.script[i] and "/system/xbin/lbesec" in edify.script[i]:
      edify.script[i] = 'set_perm(0, 0, 06755, "/system/xbin/lbesec");'
      return

def AddArgsForFormatSystem(info):
  edify = info.script
  for i in xrange(len(edify.script)):
    if "format(" in edify.script[i] and "/dev/block/platform/msm_sdcc.1/by-name/system" in edify.script[i]:
      edify.script[i] = 'format("ext4", "EMMC", "/dev/block/platform/msm_sdcc.1/by-name/system", "0", "/system");'
      return

def WritePolicyConfig(info):
  try:
    file_contexts = info.input_zip.read("META/file_contexts")
    common.ZipWriteStr(info.output_zip, "file_contexts", file_contexts)
  except KeyError:
    print "warning: file_context missing from target;"

def InstallImage(img_name, img_file, partition, info):
  common.ZipWriteStr(info.output_zip, img_name, img_file)
  info.script.AppendExtra(('package_extract_file("' + img_name + '", "' + partition + '");'))

def FullOTA_InstallEnd(info):
    WritePolicyConfig(info)
    #AddArgsForSetPermission(info)
    AddAssertions(info)

def IncrementalOTA_InstallEnd(info):
    #AddArgsForSetPermission(info)
    AddAssertions(info)
