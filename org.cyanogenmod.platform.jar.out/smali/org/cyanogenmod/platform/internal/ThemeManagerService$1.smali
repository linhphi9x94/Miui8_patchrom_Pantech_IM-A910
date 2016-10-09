.class Lorg/cyanogenmod/platform/internal/ThemeManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "ThemeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/platform/internal/ThemeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerService;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lorg/cyanogenmod/platform/internal/ThemeManagerService;

    .prologue
    .line 996
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 999
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerService;

    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->-get14(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1001
    new-instance v0, Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    invoke-direct {v0}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;-><init>()V

    .line 1002
    .local v0, "builder":Lcyanogenmod/themes/ThemeChangeRequest$Builder;
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->setWallpaper(Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    .line 1003
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerService;

    invoke-virtual {v0}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->build()Lcyanogenmod/themes/ThemeChangeRequest;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v1, v2, v4, v5}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->-wrap7(Lorg/cyanogenmod/platform/internal/ThemeManagerService;Lcyanogenmod/themes/ThemeChangeRequest;J)V

    .line 998
    .end local v0    # "builder":Lcyanogenmod/themes/ThemeChangeRequest$Builder;
    :goto_0
    return-void

    .line 1005
    :cond_0
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->-set1(Lorg/cyanogenmod/platform/internal/ThemeManagerService;Z)Z

    goto :goto_0
.end method
