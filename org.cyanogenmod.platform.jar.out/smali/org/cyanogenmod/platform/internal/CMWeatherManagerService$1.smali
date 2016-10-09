.class Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$1;
.super Lcyanogenmod/weatherservice/IWeatherProviderServiceClient$Stub;
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
    .line 70
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;

    invoke-direct {p0}, Lcyanogenmod/weatherservice/IWeatherProviderServiceClient$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public setServiceRequestState(Lcyanogenmod/weather/RequestInfo;Lcyanogenmod/weatherservice/ServiceRequestResult;I)V
    .locals 9
    .param p1, "requestInfo"    # Lcyanogenmod/weather/RequestInfo;
    .param p2, "result"    # Lcyanogenmod/weatherservice/ServiceRequestResult;
    .param p3, "status"    # I

    .prologue
    const/4 v6, 0x0

    .line 74
    iget-object v7, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;

    invoke-static {v7}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->-get3(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 76
    if-nez p1, :cond_0

    monitor-exit v7

    .line 78
    return-void

    .line 81
    :cond_0
    :try_start_0
    iget-object v8, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;

    invoke-static {v8, p3}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->-wrap1(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-nez v8, :cond_1

    monitor-exit v7

    .line 83
    return-void

    .line 86
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcyanogenmod/weather/RequestInfo;->getRequestListener()Lcyanogenmod/weather/IRequestInfoListener;

    move-result-object v1

    .line 87
    .local v1, "listener":Lcyanogenmod/weather/IRequestInfoListener;
    invoke-virtual {p1}, Lcyanogenmod/weather/RequestInfo;->getRequestType()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    .line 89
    .local v4, "requestType":I
    packed-switch v4, :pswitch_data_0

    :cond_2
    :goto_0
    monitor-exit v7

    .line 73
    return-void

    .line 92
    :pswitch_0
    const/4 v5, 0x0

    .line 93
    .local v5, "weatherInfo":Lcyanogenmod/weather/WeatherInfo;
    const/4 v6, 0x1

    if-ne p3, v6, :cond_3

    .line 94
    if-eqz p2, :cond_4

    :try_start_2
    invoke-virtual {p2}, Lcyanogenmod/weatherservice/ServiceRequestResult;->getWeatherInfo()Lcyanogenmod/weather/WeatherInfo;

    move-result-object v5

    .line 95
    .end local v5    # "weatherInfo":Lcyanogenmod/weather/WeatherInfo;
    :goto_1
    if-nez v5, :cond_5

    .line 99
    const/4 p3, -0x1

    .line 111
    :cond_3
    :goto_2
    iget-object v6, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;

    invoke-static {v6, v1}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->-wrap0(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;Lcyanogenmod/weather/IRequestInfoListener;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v6

    if-eqz v6, :cond_2

    .line 113
    :try_start_3
    invoke-interface {v1, p1, p3, v5}, Lcyanogenmod/weather/IRequestInfoListener;->onWeatherRequestCompleted(Lcyanogenmod/weather/RequestInfo;ILcyanogenmod/weather/WeatherInfo;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 94
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v5    # "weatherInfo":Lcyanogenmod/weather/WeatherInfo;
    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    .line 101
    .end local v5    # "weatherInfo":Lcyanogenmod/weather/WeatherInfo;
    :cond_5
    :try_start_4
    invoke-virtual {p1}, Lcyanogenmod/weather/RequestInfo;->isQueryOnlyWeatherRequest()Z

    move-result v6

    if-nez v6, :cond_3

    .line 102
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-wide v2

    .line 104
    .local v2, "identity":J
    :try_start_5
    iget-object v6, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;

    invoke-static {v6, v5}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->-wrap2(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;Lcyanogenmod/weather/WeatherInfo;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 106
    :try_start_6
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 74
    .end local v1    # "listener":Lcyanogenmod/weather/IRequestInfoListener;
    .end local v2    # "identity":J
    .end local v4    # "requestType":I
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 105
    .restart local v1    # "listener":Lcyanogenmod/weather/IRequestInfoListener;
    .restart local v2    # "identity":J
    .restart local v4    # "requestType":I
    :catchall_1
    move-exception v6

    .line 106
    :try_start_7
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 105
    throw v6

    .line 120
    .end local v2    # "identity":J
    :pswitch_1
    iget-object v8, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;

    invoke-static {v8, v1}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->-wrap0(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;Lcyanogenmod/weather/IRequestInfoListener;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v8

    if-eqz v8, :cond_2

    .line 124
    if-eqz p2, :cond_6

    :try_start_8
    invoke-virtual {p2}, Lcyanogenmod/weatherservice/ServiceRequestResult;->getLocationLookupList()Ljava/util/List;

    move-result-object v6

    .line 123
    :cond_6
    invoke-interface {v1, p1, p3, v6}, Lcyanogenmod/weather/IRequestInfoListener;->onLookupCityRequestCompleted(Lcyanogenmod/weather/RequestInfo;ILjava/util/List;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0

    .line 125
    :catch_1
    move-exception v0

    .restart local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
