.class final Lorg/cyanogenmod/platform/internal/PerformanceManagerService$PerformanceManagerHandler;
.super Landroid/os/Handler;
.source "PerformanceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/platform/internal/PerformanceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PerformanceManagerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/platform/internal/PerformanceManagerService;


# direct methods
.method public constructor <init>(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Lorg/cyanogenmod/platform/internal/PerformanceManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 386
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$PerformanceManagerHandler;->this$0:Lorg/cyanogenmod/platform/internal/PerformanceManagerService;

    .line 387
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 386
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 392
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 391
    :goto_0
    return-void

    .line 394
    :pswitch_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$PerformanceManagerHandler;->this$0:Lorg/cyanogenmod/platform/internal/PerformanceManagerService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->-get4(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;)Landroid/os/PowerManagerInternal;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/16 v2, 0x10

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManagerInternal;->powerHint(II)V

    goto :goto_0

    .line 397
    :pswitch_1
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$PerformanceManagerHandler;->this$0:Lorg/cyanogenmod/platform/internal/PerformanceManagerService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->-get4(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;)Landroid/os/PowerManagerInternal;

    move-result-object v0

    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManagerInternal;->powerHint(II)V

    goto :goto_0

    .line 400
    :pswitch_2
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$PerformanceManagerHandler;->this$0:Lorg/cyanogenmod/platform/internal/PerformanceManagerService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->-get4(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;)Landroid/os/PowerManagerInternal;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/16 v2, 0x30

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManagerInternal;->powerHint(II)V

    goto :goto_0

    .line 392
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
