.class Lorg/cyanogenmod/platform/internal/ThemeManagerService$ThemeWorkerHandler;
.super Landroid/os/Handler;
.source "ThemeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/platform/internal/ThemeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThemeWorkerHandler"
.end annotation


# static fields
.field private static final MESSAGE_APPLY_DEFAULT_THEME:I = 0x2

.field private static final MESSAGE_CHANGE_THEME:I = 0x1

.field private static final MESSAGE_REBUILD_RESOURCE_CACHE:I = 0x3


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerService;


# direct methods
.method public constructor <init>(Lorg/cyanogenmod/platform/internal/ThemeManagerService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lorg/cyanogenmod/platform/internal/ThemeManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 129
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService$ThemeWorkerHandler;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerService;

    .line 130
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 129
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 135
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 147
    invoke-static {}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :goto_0
    return-void

    .line 137
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcyanogenmod/themes/ThemeChangeRequest;

    .line 138
    .local v0, "request":Lcyanogenmod/themes/ThemeChangeRequest;
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService$ThemeWorkerHandler;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerService;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v1, :cond_0

    :goto_1
    invoke-static {v2, v0, v1}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->-wrap2(Lorg/cyanogenmod/platform/internal/ThemeManagerService;Lcyanogenmod/themes/ThemeChangeRequest;Z)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 141
    .end local v0    # "request":Lcyanogenmod/themes/ThemeChangeRequest;
    :pswitch_1
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService$ThemeWorkerHandler;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerService;

    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->-wrap1(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)V

    goto :goto_0

    .line 144
    :pswitch_2
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService$ThemeWorkerHandler;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerService;

    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->-wrap3(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)V

    goto :goto_0

    .line 135
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
