.class Lorg/cyanogenmod/platform/internal/CMAudioService$1;
.super Lcyanogenmod/media/ICMAudioService$Stub;
.source "CMAudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/platform/internal/CMAudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/platform/internal/CMAudioService;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/platform/internal/CMAudioService;)V
    .locals 0
    .param p1, "this$0"    # Lorg/cyanogenmod/platform/internal/CMAudioService;

    .prologue
    .line 96
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/CMAudioService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMAudioService;

    invoke-direct {p0}, Lcyanogenmod/media/ICMAudioService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 116
    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/CMAudioService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMAudioService;

    invoke-static {v4}, Lorg/cyanogenmod/platform/internal/CMAudioService;->-get0(Lorg/cyanogenmod/platform/internal/CMAudioService;)Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "android.permission.DUMP"

    const-string/jumbo v6, "CMAudioService"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 119
    const-string/jumbo v4, "CMAudio Service State:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 121
    const/4 v4, -0x1

    :try_start_0
    invoke-virtual {p0, v4}, Lorg/cyanogenmod/platform/internal/CMAudioService$1;->listAudioSessions(I)Ljava/util/List;

    move-result-object v3

    .line 122
    .local v3, "sessions":Ljava/util/List;, "Ljava/util/List<Lcyanogenmod/media/AudioSessionInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 123
    const-string/jumbo v4, "  Audio sessions:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 124
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "info$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcyanogenmod/media/AudioSessionInfo;

    .line 125
    .local v1, "info":Lcyanogenmod/media/AudioSessionInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcyanogenmod/media/AudioSessionInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 130
    .end local v1    # "info":Lcyanogenmod/media/AudioSessionInfo;
    .end local v2    # "info$iterator":Ljava/util/Iterator;
    .end local v3    # "sessions":Ljava/util/List;, "Ljava/util/List<Lcyanogenmod/media/AudioSessionInfo;>;"
    :catch_0
    move-exception v0

    .line 115
    :cond_0
    :goto_1
    return-void

    .line 128
    .restart local v3    # "sessions":Ljava/util/List;, "Ljava/util/List<Lcyanogenmod/media/AudioSessionInfo;>;"
    :cond_1
    const-string/jumbo v4, "  No active audio sessions"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public listAudioSessions(I)Ljava/util/List;
    .locals 5
    .param p1, "streamType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcyanogenmod/media/AudioSessionInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v0, "sessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcyanogenmod/media/AudioSessionInfo;>;"
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMAudioService;->-get1()Z

    move-result v2

    if-nez v2, :cond_0

    .line 103
    return-object v0

    .line 106
    :cond_0
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/CMAudioService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMAudioService;

    invoke-static {v2, p1, v0}, Lorg/cyanogenmod/platform/internal/CMAudioService;->-wrap0(Lorg/cyanogenmod/platform/internal/CMAudioService;ILjava/util/ArrayList;)I

    move-result v1

    .line 107
    .local v1, "status":I
    if-eqz v1, :cond_1

    .line 108
    const-string/jumbo v2, "CMAudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error retrieving audio sessions! status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_1
    return-object v0
.end method
