.class Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$2;
.super Lcyanogenmod/weather/ICMWeatherManager$Stub;
.source "CMWeatherManagerService.java"


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
    .line 156
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;

    invoke-direct {p0}, Lcyanogenmod/weather/ICMWeatherManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelRequest(I)V
    .locals 1
    .param p1, "requestId"    # I

    .prologue
    .line 203
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->-wrap5(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;)V

    .line 204
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;

    invoke-static {v0, p1}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->-wrap7(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;I)V

    .line 202
    return-void
.end method

.method public getActiveWeatherServiceProviderLabel()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 186
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;

    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->-wrap5(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;)V

    .line 187
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 190
    .local v2, "identity":J
    :try_start_0
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;

    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->-get1(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "weather_provider_service"

    .line 189
    invoke-static {v1, v4}, Lcyanogenmod/providers/CMSettings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "enabledProviderService":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 192
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;

    .line 193
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 192
    invoke-static {v1, v4}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->-wrap3(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;Landroid/content/ComponentName;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 196
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 192
    return-object v1

    .line 196
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 198
    return-object v5

    .line 195
    .end local v0    # "enabledProviderService":Ljava/lang/String;
    :catchall_0
    move-exception v1

    .line 196
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 195
    throw v1
.end method

.method public lookupCity(Lcyanogenmod/weather/RequestInfo;)V
    .locals 1
    .param p1, "info"    # Lcyanogenmod/weather/RequestInfo;

    .prologue
    .line 166
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->-wrap5(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;)V

    .line 167
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;

    invoke-static {v0, p1}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->-wrap8(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;Lcyanogenmod/weather/RequestInfo;)V

    .line 165
    return-void
.end method

.method public registerWeatherServiceProviderChangeListener(Lcyanogenmod/weather/IWeatherServiceProviderChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcyanogenmod/weather/IWeatherServiceProviderChangeListener;

    .prologue
    .line 173
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->-wrap5(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;)V

    .line 174
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->-get4(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 172
    return-void
.end method

.method public unregisterWeatherServiceProviderChangeListener(Lcyanogenmod/weather/IWeatherServiceProviderChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcyanogenmod/weather/IWeatherServiceProviderChangeListener;

    .prologue
    .line 180
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->-wrap5(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;)V

    .line 181
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->-get4(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 179
    return-void
.end method

.method public updateWeather(Lcyanogenmod/weather/RequestInfo;)V
    .locals 1
    .param p1, "info"    # Lcyanogenmod/weather/RequestInfo;

    .prologue
    .line 160
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->-wrap5(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;)V

    .line 161
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;

    invoke-static {v0, p1}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->-wrap9(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;Lcyanogenmod/weather/RequestInfo;)V

    .line 159
    return-void
.end method
