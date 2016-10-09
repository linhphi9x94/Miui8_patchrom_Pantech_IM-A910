.class Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$3;
.super Ljava/lang/Object;
.source "CMWeatherManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;

    .prologue
    .line 302
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$3;->this$0:Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 305
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$3;->this$0:Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;

    invoke-static {p2}, Lcyanogenmod/weatherservice/IWeatherProviderService$Stub;->asInterface(Landroid/os/IBinder;)Lcyanogenmod/weatherservice/IWeatherProviderService;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->-set2(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;Lcyanogenmod/weatherservice/IWeatherProviderService;)Lcyanogenmod/weatherservice/IWeatherProviderService;

    .line 306
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$3;->this$0:Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->-set0(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;Z)Z

    .line 308
    :try_start_0
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$3;->this$0:Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;

    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->-get7(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;)Lcyanogenmod/weatherservice/IWeatherProviderService;

    move-result-object v1

    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$3;->this$0:Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;

    invoke-static {v2}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->-get6(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;)Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;

    move-result-object v2

    invoke-interface {v1, v2}, Lcyanogenmod/weatherservice/IWeatherProviderService;->setServiceClient(Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    :goto_0
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$3;->this$0:Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;

    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->-get5(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 312
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$3;->this$0:Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;

    invoke-static {v1, p1}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->-wrap6(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;Landroid/content/ComponentName;)V

    .line 314
    :cond_0
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$3;->this$0:Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->-set1(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;Z)Z

    .line 304
    return-void

    .line 309
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 319
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$3;->this$0:Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->-set2(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;Lcyanogenmod/weatherservice/IWeatherProviderService;)Lcyanogenmod/weatherservice/IWeatherProviderService;

    .line 320
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$3;->this$0:Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->-set0(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;Z)Z

    .line 321
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Connection with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " has been closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    return-void
.end method
