.class public Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;
.super Lcom/android/server/SystemService;
.source "CMWeatherManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$1;,
        Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$2;,
        Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$3;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsWeatherProviderServiceBound:Z

.field private mMutex:Ljava/lang/Object;

.field private final mProviderChangeListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcyanogenmod/weather/IWeatherServiceProviderChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mReconnectedDuePkgModified:Z

.field private final mService:Landroid/os/IBinder;

.field private final mServiceClient:Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;

.field private mWeatherProviderService:Lcyanogenmod/weatherservice/IWeatherProviderService;

.field private mWeatherServiceProviderConnection:Landroid/content/ServiceConnection;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mIsWeatherProviderServiceBound:Z

    return v0
.end method

.method static synthetic -get3(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mMutex:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get4(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;)Landroid/os/RemoteCallbackList;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mProviderChangeListeners:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic -get5(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mReconnectedDuePkgModified:Z

    return v0
.end method

.method static synthetic -get6(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;)Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mServiceClient:Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;

    return-object v0
.end method

.method static synthetic -get7(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;)Lcyanogenmod/weatherservice/IWeatherProviderService;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mWeatherProviderService:Lcyanogenmod/weatherservice/IWeatherProviderService;

    return-object v0
.end method

.method static synthetic -get8(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;)Landroid/content/ServiceConnection;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mWeatherServiceProviderConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic -set0(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mIsWeatherProviderServiceBound:Z

    return p1
.end method

.method static synthetic -set1(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mReconnectedDuePkgModified:Z

    return p1
.end method

.method static synthetic -set2(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;Lcyanogenmod/weatherservice/IWeatherProviderService;)Lcyanogenmod/weatherservice/IWeatherProviderService;
    .locals 0

    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mWeatherProviderService:Lcyanogenmod/weatherservice/IWeatherProviderService;

    return-object p1
.end method

.method static synthetic -wrap0(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;Lcyanogenmod/weather/IRequestInfoListener;)Z
    .locals 1
    .param p1, "listener"    # Lcyanogenmod/weather/IRequestInfoListener;

    .prologue
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->isValidListener(Lcyanogenmod/weather/IRequestInfoListener;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;I)Z
    .locals 1
    .param p1, "state"    # I

    .prologue
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->isValidRequestInfoStatus(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;Lcyanogenmod/weather/WeatherInfo;)Z
    .locals 1
    .param p1, "wi"    # Lcyanogenmod/weather/WeatherInfo;

    .prologue
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->updateWeatherInfoLocked(Lcyanogenmod/weather/WeatherInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->getComponentLabel(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->disconnectClient()V

    return-void
.end method

.method static synthetic -wrap5(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->enforcePermission()V

    return-void
.end method

.method static synthetic -wrap6(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->notifyProviderChanged(Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic -wrap7(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;I)V
    .locals 0
    .param p1, "requestId"    # I

    .prologue
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->processCancelRequest(I)V

    return-void
.end method

.method static synthetic -wrap8(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;Lcyanogenmod/weather/RequestInfo;)V
    .locals 0
    .param p1, "info"    # Lcyanogenmod/weather/RequestInfo;

    .prologue
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->processCityNameLookupRequest(Lcyanogenmod/weather/RequestInfo;)V

    return-void
.end method

.method static synthetic -wrap9(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;Lcyanogenmod/weather/RequestInfo;)V
    .locals 0
    .param p1, "info"    # Lcyanogenmod/weather/RequestInfo;

    .prologue
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->processWeatherUpdateRequest(Lcyanogenmod/weather/RequestInfo;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-class v0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->TAG:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 220
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mMutex:Ljava/lang/Object;

    .line 66
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 65
    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mProviderChangeListeners:Landroid/os/RemoteCallbackList;

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mReconnectedDuePkgModified:Z

    .line 70
    new-instance v0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$1;

    invoke-direct {v0, p0}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$1;-><init>(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;)V

    .line 69
    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mServiceClient:Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;

    .line 156
    new-instance v0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$2;

    invoke-direct {v0, p0}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$2;-><init>(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;)V

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mService:Landroid/os/IBinder;

    .line 302
    new-instance v0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$3;

    invoke-direct {v0, p0}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$3;-><init>(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;)V

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mWeatherServiceProviderConnection:Landroid/content/ServiceConnection;

    .line 221
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mContext:Landroid/content/Context;

    .line 219
    return-void
.end method

.method private bindActiveWeatherProviderService()V
    .locals 6

    .prologue
    .line 239
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 240
    const-string/jumbo v2, "weather_provider_service"

    .line 239
    invoke-static {v1, v2}, Lcyanogenmod/providers/CMSettings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "activeProviderService":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 243
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 242
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 244
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mWeatherServiceProviderConnection:Landroid/content/ServiceConnection;

    .line 245
    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 244
    const/4 v5, 0x1

    .line 242
    invoke-virtual {v1, v2, v3, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 246
    sget-object v1, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to bind service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_0
    return-void
.end method

.method private canProcessWeatherUpdateRequest(Lcyanogenmod/weather/RequestInfo;)Z
    .locals 4
    .param p1, "info"    # Lcyanogenmod/weather/RequestInfo;

    .prologue
    .line 252
    invoke-virtual {p1}, Lcyanogenmod/weather/RequestInfo;->getRequestListener()Lcyanogenmod/weather/IRequestInfoListener;

    move-result-object v1

    .line 254
    .local v1, "listener":Lcyanogenmod/weather/IRequestInfoListener;
    iget-boolean v2, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mIsWeatherProviderServiceBound:Z

    if-nez v2, :cond_1

    .line 255
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcyanogenmod/weather/IRequestInfoListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->pingBinder()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 258
    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 257
    :try_start_0
    invoke-interface {v1, p1, v2, v3}, Lcyanogenmod/weather/IRequestInfoListener;->onWeatherRequestCompleted(Lcyanogenmod/weather/RequestInfo;ILcyanogenmod/weather/WeatherInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :cond_0
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 259
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 264
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method private declared-synchronized disconnectClient()V
    .locals 3

    .prologue
    monitor-enter p0

    .line 492
    :try_start_0
    iget-boolean v1, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mIsWeatherProviderServiceBound:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 495
    :try_start_1
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mWeatherProviderService:Lcyanogenmod/weatherservice/IWeatherProviderService;

    invoke-interface {v1}, Lcyanogenmod/weatherservice/IWeatherProviderService;->cancelOngoingRequests()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 501
    :goto_0
    :try_start_2
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mWeatherProviderService:Lcyanogenmod/weatherservice/IWeatherProviderService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcyanogenmod/weatherservice/IWeatherProviderService;->setServiceClient(Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 506
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mWeatherServiceProviderConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 507
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mIsWeatherProviderServiceBound:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_0
    monitor-exit p0

    .line 491
    return-void

    .line 496
    :catch_0
    move-exception v0

    .line 497
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4
    sget-object v1, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Error occurred while trying to cancel ongoing requests"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 502
    :catch_1
    move-exception v0

    .line 503
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_5
    sget-object v1, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Error occurred while disconnecting client"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method private enforcePermission()V
    .locals 3

    .prologue
    .line 152
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mContext:Landroid/content/Context;

    .line 153
    const-string/jumbo v1, "cyanogenmod.permission.ACCESS_WEATHER_MANAGER"

    const/4 v2, 0x0

    .line 152
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method private getComponentLabel(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 5
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    const/4 v4, 0x0

    .line 209
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 210
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v3, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 212
    .local v0, "intent":Landroid/content/Intent;
    const/4 v3, 0x4

    .line 211
    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 213
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_0

    .line 214
    invoke-virtual {v2, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 216
    :cond_0
    return-object v4
.end method

.method private isValidListener(Lcyanogenmod/weather/IRequestInfoListener;)Z
    .locals 1
    .param p1, "listener"    # Lcyanogenmod/weather/IRequestInfoListener;

    .prologue
    .line 148
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcyanogenmod/weather/IRequestInfoListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidRequestInfoStatus(I)Z
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 135
    packed-switch p1, :pswitch_data_0

    .line 143
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 141
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 135
    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private notifyProviderChanged(Landroid/content/ComponentName;)V
    .locals 6
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 326
    const/4 v4, 0x0

    .line 327
    .local v4, "providerName":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 328
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->getComponentLabel(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v4

    .line 331
    .end local v4    # "providerName":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mProviderChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 332
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "indx":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 334
    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mProviderChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcyanogenmod/weather/IWeatherServiceProviderChangeListener;

    .line 336
    .local v3, "listener":Lcyanogenmod/weather/IWeatherServiceProviderChangeListener;
    :try_start_0
    invoke-interface {v3, v4}, Lcyanogenmod/weather/IWeatherServiceProviderChangeListener;->onWeatherServiceProviderChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 337
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 340
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "listener":Lcyanogenmod/weather/IWeatherServiceProviderChangeListener;
    :cond_1
    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mProviderChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 325
    return-void
.end method

.method private processCancelRequest(I)V
    .locals 2
    .param p1, "requestId"    # I

    .prologue
    .line 294
    iget-boolean v1, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mIsWeatherProviderServiceBound:Z

    if-eqz v1, :cond_0

    .line 296
    :try_start_0
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mWeatherProviderService:Lcyanogenmod/weatherservice/IWeatherProviderService;

    invoke-interface {v1, p1}, Lcyanogenmod/weatherservice/IWeatherProviderService;->cancelRequest(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 297
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private processCityNameLookupRequest(Lcyanogenmod/weather/RequestInfo;)V
    .locals 4
    .param p1, "info"    # Lcyanogenmod/weather/RequestInfo;

    .prologue
    .line 276
    iget-boolean v2, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mIsWeatherProviderServiceBound:Z

    if-nez v2, :cond_1

    .line 277
    invoke-virtual {p1}, Lcyanogenmod/weather/RequestInfo;->getRequestListener()Lcyanogenmod/weather/IRequestInfoListener;

    move-result-object v1

    .line 278
    .local v1, "listener":Lcyanogenmod/weather/IRequestInfoListener;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcyanogenmod/weather/IRequestInfoListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->pingBinder()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 281
    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 280
    :try_start_0
    invoke-interface {v1, p1, v2, v3}, Lcyanogenmod/weather/IRequestInfoListener;->onLookupCityRequestCompleted(Lcyanogenmod/weather/RequestInfo;ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 282
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 288
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "listener":Lcyanogenmod/weather/IRequestInfoListener;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mWeatherProviderService:Lcyanogenmod/weatherservice/IWeatherProviderService;

    invoke-interface {v2, p1}, Lcyanogenmod/weatherservice/IWeatherProviderService;->processCityNameLookupRequest(Lcyanogenmod/weather/RequestInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 275
    :goto_1
    return-void

    .line 289
    :catch_1
    move-exception v0

    .restart local v0    # "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private declared-synchronized processWeatherUpdateRequest(Lcyanogenmod/weather/RequestInfo;)V
    .locals 2
    .param p1, "info"    # Lcyanogenmod/weather/RequestInfo;

    .prologue
    monitor-enter p0

    .line 268
    :try_start_0
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->canProcessWeatherUpdateRequest(Lcyanogenmod/weather/RequestInfo;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    monitor-exit p0

    return-void

    .line 270
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mWeatherProviderService:Lcyanogenmod/weatherservice/IWeatherProviderService;

    invoke-interface {v1, p1}, Lcyanogenmod/weatherservice/IWeatherProviderService;->processWeatherUpdateRequest(Lcyanogenmod/weather/RequestInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    .line 267
    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 271
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private registerPackageMonitor()V
    .locals 5

    .prologue
    .line 380
    new-instance v0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$4;

    invoke-direct {v0, p0}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$4;-><init>(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;)V

    .line 465
    .local v0, "monitor":Lcom/android/internal/content/PackageMonitor;
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 379
    return-void
.end method

.method private registerSettingsObserver()V
    .locals 5

    .prologue
    .line 470
    const-string/jumbo v2, "weather_provider_service"

    .line 469
    invoke-static {v2}, Lcyanogenmod/providers/CMSettings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 471
    .local v0, "enabledWeatherProviderServiceUri":Landroid/net/Uri;
    new-instance v1, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$5;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$5;-><init>(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;Landroid/os/Handler;Landroid/net/Uri;)V

    .line 487
    .local v1, "observer":Landroid/database/ContentObserver;
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 488
    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 487
    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 468
    return-void
.end method

.method private updateWeatherInfoLocked(Lcyanogenmod/weather/WeatherInfo;)Z
    .locals 10
    .param p1, "wi"    # Lcyanogenmod/weather/WeatherInfo;

    .prologue
    .line 344
    invoke-virtual {p1}, Lcyanogenmod/weather/WeatherInfo;->getForecasts()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v4, v6, 0x1

    .line 345
    .local v4, "size":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 346
    .local v1, "contentValuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 348
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v6, "city"

    invoke-virtual {p1}, Lcyanogenmod/weather/WeatherInfo;->getCity()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const-string/jumbo v6, "temperature"

    invoke-virtual {p1}, Lcyanogenmod/weather/WeatherInfo;->getTemperature()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 350
    const-string/jumbo v6, "temperature_unit"

    invoke-virtual {p1}, Lcyanogenmod/weather/WeatherInfo;->getTemperatureUnit()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 351
    const-string/jumbo v6, "condition_code"

    invoke-virtual {p1}, Lcyanogenmod/weather/WeatherInfo;->getConditionCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 352
    const-string/jumbo v6, "humidity"

    invoke-virtual {p1}, Lcyanogenmod/weather/WeatherInfo;->getHumidity()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 353
    const-string/jumbo v6, "wind_speed"

    invoke-virtual {p1}, Lcyanogenmod/weather/WeatherInfo;->getWindSpeed()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 354
    const-string/jumbo v6, "wind_direction"

    invoke-virtual {p1}, Lcyanogenmod/weather/WeatherInfo;->getWindDirection()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 355
    const-string/jumbo v6, "wind_speed_unit"

    invoke-virtual {p1}, Lcyanogenmod/weather/WeatherInfo;->getWindSpeedUnit()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 356
    const-string/jumbo v6, "timestamp"

    invoke-virtual {p1}, Lcyanogenmod/weather/WeatherInfo;->getTimestamp()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 357
    const-string/jumbo v6, "todays_high"

    invoke-virtual {p1}, Lcyanogenmod/weather/WeatherInfo;->getTodaysHigh()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 358
    const-string/jumbo v6, "todays_low"

    invoke-virtual {p1}, Lcyanogenmod/weather/WeatherInfo;->getTodaysLow()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 359
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    invoke-virtual {p1}, Lcyanogenmod/weather/WeatherInfo;->getForecasts()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "df$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcyanogenmod/weather/WeatherInfo$DayForecast;

    .line 362
    .local v2, "df":Lcyanogenmod/weather/WeatherInfo$DayForecast;
    new-instance v0, Landroid/content/ContentValues;

    .end local v0    # "contentValues":Landroid/content/ContentValues;
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 363
    .restart local v0    # "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v6, "forecast_low"

    invoke-virtual {v2}, Lcyanogenmod/weather/WeatherInfo$DayForecast;->getLow()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 364
    const-string/jumbo v6, "forecast_high"

    invoke-virtual {v2}, Lcyanogenmod/weather/WeatherInfo$DayForecast;->getHigh()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 365
    const-string/jumbo v6, "forecast_condition_code"

    invoke-virtual {v2}, Lcyanogenmod/weather/WeatherInfo$DayForecast;->getConditionCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 366
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 369
    .end local v2    # "df":Lcyanogenmod/weather/WeatherInfo$DayForecast;
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    new-array v5, v6, [Landroid/content/ContentValues;

    .line 370
    .local v5, "updateValues":[Landroid/content/ContentValues;
    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 371
    sget-object v8, Lcyanogenmod/providers/WeatherContract$WeatherColumns;->CURRENT_AND_FORECAST_WEATHER_URI:Landroid/net/Uri;

    .line 372
    invoke-interface {v1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/content/ContentValues;

    .line 370
    invoke-virtual {v7, v8, v6}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v6

    if-eq v4, v6, :cond_1

    .line 373
    sget-object v6, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Failed to update the weather content provider"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const/4 v6, 0x0

    return v6

    .line 376
    :cond_1
    const/4 v6, 0x1

    return v6
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 1
    .param p1, "phase"    # I

    .prologue
    .line 233
    const/16 v0, 0x226

    if-ne p1, v0, :cond_0

    .line 234
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->bindActiveWeatherProviderService()V

    .line 232
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 226
    const-string/jumbo v0, "cmweather"

    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 227
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->registerPackageMonitor()V

    .line 228
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->registerSettingsObserver()V

    .line 225
    return-void
.end method
