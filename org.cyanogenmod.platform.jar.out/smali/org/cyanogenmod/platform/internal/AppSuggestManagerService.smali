.class public Lorg/cyanogenmod/platform/internal/AppSuggestManagerService;
.super Lcom/android/server/SystemService;
.source "AppSuggestManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cyanogenmod/platform/internal/AppSuggestManagerService$1;
    }
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "org.cyanogenmod.app.suggest"

.field public static final DEBUG:Z

.field public static final NAME:Ljava/lang/String; = "appsuggest"

.field private static final TAG:Ljava/lang/String; = "AppSgstMgrService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mImpl:Lorg/cyanogenmod/platform/internal/AppSuggestProviderInterface;

.field private final mService:Landroid/os/IBinder;


# direct methods
.method static synthetic -get0(Lorg/cyanogenmod/platform/internal/AppSuggestManagerService;)Lorg/cyanogenmod/platform/internal/AppSuggestProviderInterface;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/AppSuggestManagerService;->mImpl:Lorg/cyanogenmod/platform/internal/AppSuggestProviderInterface;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    const-string/jumbo v0, "AppSgstMgrService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lorg/cyanogenmod/platform/internal/AppSuggestManagerService;->DEBUG:Z

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance v0, Lorg/cyanogenmod/platform/internal/AppSuggestManagerService$1;

    invoke-direct {v0, p0}, Lorg/cyanogenmod/platform/internal/AppSuggestManagerService$1;-><init>(Lorg/cyanogenmod/platform/internal/AppSuggestManagerService;)V

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/AppSuggestManagerService;->mService:Landroid/os/IBinder;

    .line 62
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/AppSuggestManagerService;->mContext:Landroid/content/Context;

    .line 60
    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 6

    .prologue
    .line 67
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/AppSuggestManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "AppSgstMgrService"

    const-string/jumbo v2, "org.cyanogenmod.app.suggest"

    .line 68
    const/high16 v3, 0x3f050000    # 0.51953125f

    .line 69
    const/high16 v4, 0x3f060000    # 0.5234375f

    .line 70
    const v5, 0x3f040005

    .line 67
    invoke-static/range {v0 .. v5}, Lorg/cyanogenmod/platform/internal/AppSuggestProviderProxy;->createAndBind(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;III)Lorg/cyanogenmod/platform/internal/AppSuggestProviderProxy;

    move-result-object v0

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/AppSuggestManagerService;->mImpl:Lorg/cyanogenmod/platform/internal/AppSuggestProviderInterface;

    .line 71
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/AppSuggestManagerService;->mImpl:Lorg/cyanogenmod/platform/internal/AppSuggestProviderInterface;

    if-nez v0, :cond_0

    .line 72
    const-string/jumbo v0, "AppSgstMgrService"

    const-string/jumbo v1, "no app suggest provider found"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :goto_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/AppSuggestManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 78
    const-string/jumbo v1, "org.cyanogenmod.appsuggest"

    .line 77
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    const-string/jumbo v0, "cmappsuggest"

    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/AppSuggestManagerService;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1}, Lorg/cyanogenmod/platform/internal/AppSuggestManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 66
    :goto_1
    return-void

    .line 74
    :cond_0
    const-string/jumbo v0, "AppSgstMgrService"

    const-string/jumbo v1, "Bound to to suggest provider"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 81
    :cond_1
    const-string/jumbo v0, "AppSgstMgrService"

    const-string/jumbo v1, "CM hardware service started by system server but feature xml not declared. Not publishing binder service!"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
