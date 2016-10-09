.class Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "CMStatusBarManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;

    .prologue
    .line 111
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 114
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 115
    .local v8, "action":Ljava/lang/String;
    if-nez v8, :cond_0

    .line 116
    return-void

    .line 119
    :cond_0
    const/16 v17, 0x0

    .line 120
    .local v17, "queryRestart":Z
    const/4 v15, 0x0

    .line 121
    .local v15, "queryRemove":Z
    const/4 v12, 0x0

    .line 122
    .local v12, "packageChanged":Z
    const/16 v18, 0x1

    .line 124
    .local v18, "removeTiles":Z
    const-string/jumbo v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 125
    const-string/jumbo v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    .line 124
    .local v15, "queryRemove":Z
    if-nez v15, :cond_1

    .line 126
    const-string/jumbo v2, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 124
    if-nez v2, :cond_1

    .line 127
    const-string/jumbo v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 124
    .local v12, "packageChanged":Z
    if-nez v12, :cond_1

    .line 128
    const-string/jumbo v2, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    .line 124
    .local v17, "queryRestart":Z
    if-nez v17, :cond_1

    .line 129
    const-string/jumbo v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 124
    if-eqz v2, :cond_d

    .line 130
    .end local v12    # "packageChanged":Z
    .end local v15    # "queryRemove":Z
    .end local v17    # "queryRestart":Z
    :cond_1
    const-string/jumbo v2, "android.intent.extra.user_handle"

    .line 131
    const/4 v4, -0x1

    .line 130
    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 132
    .local v5, "changeUserId":I
    const/4 v13, 0x0

    .line 133
    .local v13, "pkgList":[Ljava/lang/String;
    if-eqz v15, :cond_3

    .line 134
    const-string/jumbo v2, "android.intent.extra.REPLACING"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v16

    .line 135
    :goto_0
    const-string/jumbo v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 136
    const-string/jumbo v2, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 170
    .local v13, "pkgList":[Ljava/lang/String;
    :goto_1
    if-eqz v13, :cond_c

    array-length v2, v13

    if-lez v2, :cond_c

    .line 171
    const/4 v2, 0x0

    array-length v0, v13

    move/from16 v21, v0

    move/from16 v20, v2

    :goto_2
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_c

    aget-object v3, v13, v20

    .line 172
    .local v3, "pkgName":Ljava/lang/String;
    if-eqz v18, :cond_2

    .line 173
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;

    if-eqz v17, :cond_b

    const/4 v4, 0x0

    .line 174
    :goto_3
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 173
    invoke-virtual/range {v2 .. v7}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->removeAllCustomTilesInt(Ljava/lang/String;ZIILorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;)Z

    .line 171
    :cond_2
    add-int/lit8 v2, v20, 0x1

    move/from16 v20, v2

    goto :goto_2

    .line 133
    .end local v3    # "pkgName":Ljava/lang/String;
    .local v13, "pkgList":[Ljava/lang/String;
    :cond_3
    const/16 v16, 0x0

    .local v16, "queryReplace":Z
    goto :goto_0

    .line 137
    .end local v16    # "queryReplace":Z
    :cond_4
    if-eqz v17, :cond_5

    .line 138
    const-string/jumbo v2, "android.intent.extra.PACKAGES"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .local v13, "pkgList":[Ljava/lang/String;
    goto :goto_1

    .line 140
    .local v13, "pkgList":[Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v19

    .line 141
    .local v19, "uri":Landroid/net/Uri;
    if-nez v19, :cond_6

    .line 142
    return-void

    .line 144
    :cond_6
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 145
    .restart local v3    # "pkgName":Ljava/lang/String;
    if-nez v3, :cond_7

    .line 146
    return-void

    .line 148
    :cond_7
    if-eqz v12, :cond_9

    .line 151
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v14

    .line 153
    .local v14, "pm":Landroid/content/pm/IPackageManager;
    const/4 v2, -0x1

    if-eq v5, v2, :cond_a

    move v2, v5

    .line 152
    :goto_4
    invoke-interface {v14, v3, v2}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v11

    .line 155
    .local v11, "enabled":I
    const/4 v2, 0x1

    if-eq v11, v2, :cond_8

    .line 156
    if-nez v11, :cond_9

    .line 157
    :cond_8
    const/16 v18, 0x0

    .line 167
    .end local v11    # "enabled":I
    .end local v14    # "pm":Landroid/content/pm/IPackageManager;
    :cond_9
    :goto_5
    const/4 v2, 0x1

    new-array v13, v2, [Ljava/lang/String;

    .end local v13    # "pkgList":[Ljava/lang/String;
    const/4 v2, 0x0

    aput-object v3, v13, v2

    .local v13, "pkgList":[Ljava/lang/String;
    goto :goto_1

    .line 154
    .local v13, "pkgList":[Ljava/lang/String;
    .restart local v14    # "pm":Landroid/content/pm/IPackageManager;
    :cond_a
    const/4 v2, 0x0

    goto :goto_4

    .line 159
    .end local v14    # "pm":Landroid/content/pm/IPackageManager;
    :catch_0
    move-exception v10

    .line 162
    .local v10, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v2, "CMStatusBarManagerService"

    const-string/jumbo v4, "Exception trying to look up app enabled setting"

    invoke-static {v2, v4, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 173
    .end local v10    # "e":Ljava/lang/IllegalArgumentException;
    .end local v19    # "uri":Landroid/net/Uri;
    .local v13, "pkgList":[Ljava/lang/String;
    :cond_b
    const/4 v4, 0x1

    goto :goto_3

    .line 178
    .end local v3    # "pkgName":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;

    invoke-static {v2}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->-get1(Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;)Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0, v13}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;->onPackagesChanged(Z[Ljava/lang/String;)V

    .line 113
    .end local v5    # "changeUserId":I
    .end local v13    # "pkgList":[Ljava/lang/String;
    :cond_d
    return-void

    .line 163
    .restart local v3    # "pkgName":Ljava/lang/String;
    .restart local v5    # "changeUserId":I
    .local v13, "pkgList":[Ljava/lang/String;
    .restart local v19    # "uri":Landroid/net/Uri;
    :catch_1
    move-exception v9

    .local v9, "e":Landroid/os/RemoteException;
    goto :goto_5
.end method
