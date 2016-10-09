.class Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$5;
.super Landroid/database/ContentObserver;
.source "CMWeatherManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->registerSettingsObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;

.field final synthetic val$enabledWeatherProviderServiceUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;Landroid/os/Handler;Landroid/net/Uri;)V
    .locals 0
    .param p1, "this$0"    # Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;
    .param p2, "$anonymous0"    # Landroid/os/Handler;
    .param p3, "val$enabledWeatherProviderServiceUri"    # Landroid/net/Uri;

    .prologue
    .line 471
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$5;->this$0:Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;

    iput-object p3, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$5;->val$enabledWeatherProviderServiceUri:Landroid/net/Uri;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .locals 7
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    .prologue
    .line 474
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$5;->val$enabledWeatherProviderServiceUri:Landroid/net/Uri;

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 475
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$5;->this$0:Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;

    invoke-static {v2}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->-get1(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 476
    const-string/jumbo v3, "weather_provider_service"

    .line 475
    invoke-static {v2, v3}, Lcyanogenmod/providers/CMSettings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 477
    .local v0, "activeSrvc":Ljava/lang/String;
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$5;->this$0:Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;

    invoke-static {v2}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->-wrap4(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;)V

    .line 478
    if-eqz v0, :cond_0

    .line 479
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 480
    .local v1, "cn":Landroid/content/ComponentName;
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$5;->this$0:Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;

    invoke-virtual {v2}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    .line 481
    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$5;->this$0:Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;

    invoke-static {v4}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->-get8(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;)Landroid/content/ServiceConnection;

    move-result-object v4

    .line 482
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 481
    const/4 v6, 0x1

    .line 480
    invoke-virtual {v2, v3, v4, v6, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 473
    .end local v0    # "activeSrvc":Ljava/lang/String;
    .end local v1    # "cn":Landroid/content/ComponentName;
    :cond_0
    return-void
.end method
