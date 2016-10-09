.class Lorg/cyanogenmod/platform/internal/ThemeManagerService$ResourceProcessingHandler;
.super Landroid/os/Handler;
.source "ThemeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/platform/internal/ThemeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResourceProcessingHandler"
.end annotation


# static fields
.field private static final MESSAGE_DEQUEUE_AND_PROCESS_THEME:I = 0x4

.field private static final MESSAGE_QUEUE_THEME_FOR_PROCESSING:I = 0x3


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerService;


# direct methods
.method public constructor <init>(Lorg/cyanogenmod/platform/internal/ThemeManagerService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lorg/cyanogenmod/platform/internal/ThemeManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 157
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService$ResourceProcessingHandler;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerService;

    .line 158
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 157
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 163
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 207
    invoke-static {}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->-get0()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unknown message "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 165
    :pswitch_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 166
    .local v3, "pkgName":Ljava/lang/String;
    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService$ResourceProcessingHandler;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerService;

    invoke-static {v5}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->-get13(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)Ljava/util/ArrayList;

    move-result-object v6

    monitor-enter v6

    .line 167
    :try_start_0
    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService$ResourceProcessingHandler;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerService;

    invoke-static {v5}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->-get13(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 169
    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService$ResourceProcessingHandler;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerService;

    invoke-static {v5}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->-get13(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService$ResourceProcessingHandler;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerService;

    invoke-static {v5}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->-get13(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_1

    .line 171
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lorg/cyanogenmod/platform/internal/ThemeManagerService$ResourceProcessingHandler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v6

    goto :goto_0

    .line 166
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 177
    .end local v3    # "pkgName":Ljava/lang/String;
    :pswitch_1
    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService$ResourceProcessingHandler;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerService;

    invoke-static {v5}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->-get13(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)Ljava/util/ArrayList;

    move-result-object v6

    monitor-enter v6

    .line 178
    :try_start_1
    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService$ResourceProcessingHandler;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerService;

    invoke-static {v5}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->-get13(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .restart local v3    # "pkgName":Ljava/lang/String;
    monitor-exit v6

    .line 180
    if-eqz v3, :cond_0

    .line 184
    :try_start_2
    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService$ResourceProcessingHandler;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerService;

    invoke-static {v5}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->-get8(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 185
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService$ResourceProcessingHandler;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerService;

    invoke-static {v5, v2}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->-wrap0(Lorg/cyanogenmod/platform/internal/ThemeManagerService;Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v1

    .line 190
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    :goto_1
    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService$ResourceProcessingHandler;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerService;

    invoke-static {v5}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->-get8(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/pm/PackageManager;->processThemeResources(Ljava/lang/String;)I

    move-result v4

    .line 191
    .local v4, "result":I
    if-gez v4, :cond_2

    .line 192
    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService$ResourceProcessingHandler;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerService;

    if-eqz v1, :cond_4

    :goto_2
    invoke-static {v5, v1}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->-wrap4(Lorg/cyanogenmod/platform/internal/ThemeManagerService;Ljava/lang/String;)V

    .line 194
    :cond_2
    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService$ResourceProcessingHandler;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerService;

    invoke-static {v5, v3, v4}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->-wrap6(Lorg/cyanogenmod/platform/internal/ThemeManagerService;Ljava/lang/String;I)V

    .line 196
    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService$ResourceProcessingHandler;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerService;

    invoke-static {v5}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->-get13(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)Ljava/util/ArrayList;

    move-result-object v6

    monitor-enter v6

    .line 197
    :try_start_3
    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService$ResourceProcessingHandler;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerService;

    invoke-static {v5}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->-get13(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 198
    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService$ResourceProcessingHandler;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerService;

    invoke-static {v5}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->-get13(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 199
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lorg/cyanogenmod/platform/internal/ThemeManagerService$ResourceProcessingHandler;->hasMessages(I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v5

    if-eqz v5, :cond_5

    :cond_3
    :goto_3
    monitor-exit v6

    .line 203
    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService$ResourceProcessingHandler;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerService;

    invoke-static {v5, v3}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->-wrap5(Lorg/cyanogenmod/platform/internal/ThemeManagerService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 177
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v4    # "result":I
    :catchall_1
    move-exception v5

    monitor-exit v6

    throw v5

    .line 186
    .restart local v3    # "pkgName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    .local v1, "name":Ljava/lang/String;
    goto :goto_1

    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v1    # "name":Ljava/lang/String;
    .restart local v4    # "result":I
    :cond_4
    move-object v1, v3

    .line 192
    goto :goto_2

    .line 200
    :cond_5
    const/4 v5, 0x4

    :try_start_4
    invoke-virtual {p0, v5}, Lorg/cyanogenmod/platform/internal/ThemeManagerService$ResourceProcessingHandler;->sendEmptyMessage(I)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    .line 196
    :catchall_2
    move-exception v5

    monitor-exit v6

    throw v5

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
