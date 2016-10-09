.class Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;
.super Lcyanogenmod/app/IProfileManager$Stub;
.source "ProfileManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/platform/internal/ProfileManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    .prologue
    .line 253
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    invoke-direct {p0}, Lcyanogenmod/app/IProfileManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addNotificationGroup(Landroid/app/NotificationGroup;)V
    .locals 3
    .param p1, "group"    # Landroid/app/NotificationGroup;

    .prologue
    .line 426
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    invoke-static {v2}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->-wrap5(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)V

    .line 427
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    invoke-static {v2, p1}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->-wrap2(Lorg/cyanogenmod/platform/internal/ProfileManagerService;Landroid/app/NotificationGroup;)V

    .line 428
    invoke-static {}, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;->clearCallingIdentity()J

    move-result-wide v0

    .line 429
    .local v0, "token":J
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    invoke-static {v2}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->-wrap8(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)V

    .line 430
    invoke-static {v0, v1}, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;->restoreCallingIdentity(J)V

    .line 425
    return-void
.end method

.method public addProfile(Lcyanogenmod/app/Profile;)Z
    .locals 3
    .param p1, "profile"    # Lcyanogenmod/app/Profile;

    .prologue
    .line 311
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    invoke-static {v2}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->-wrap5(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)V

    .line 312
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    invoke-static {v2, p1}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->-wrap3(Lorg/cyanogenmod/platform/internal/ProfileManagerService;Lcyanogenmod/app/Profile;)V

    .line 313
    invoke-static {}, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;->clearCallingIdentity()J

    move-result-wide v0

    .line 314
    .local v0, "token":J
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    invoke-static {v2}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->-wrap8(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)V

    .line 315
    invoke-static {v0, v1}, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;->restoreCallingIdentity(J)V

    .line 316
    const/4 v2, 0x1

    return v2
.end method

.method public getActiveProfile()Lcyanogenmod/app/Profile;
    .locals 1

    .prologue
    .line 346
    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 348
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->-get4(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Lcyanogenmod/app/Profile;

    move-result-object v0

    return-object v0

    .line 350
    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    invoke-virtual {v0}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->getActiveProfileInternal()Lcyanogenmod/app/Profile;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationGroup(Landroid/os/ParcelUuid;)Landroid/app/NotificationGroup;
    .locals 2
    .param p1, "uuid"    # Landroid/os/ParcelUuid;

    .prologue
    .line 475
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->-get9(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Landroid/app/NotificationGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationGroup;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->-get9(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Landroid/app/NotificationGroup;

    move-result-object v0

    return-object v0

    .line 478
    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->-get5(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationGroup;

    return-object v0
.end method

.method public getNotificationGroupForPackage(Ljava/lang/String;)Landroid/app/NotificationGroup;
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 465
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    invoke-static {v2}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->-get5(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "group$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationGroup;

    .line 466
    .local v0, "group":Landroid/app/NotificationGroup;
    invoke-virtual {v0, p1}, Landroid/app/NotificationGroup;->hasPackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 467
    return-object v0

    .line 470
    .end local v0    # "group":Landroid/app/NotificationGroup;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public getNotificationGroups()[Landroid/app/NotificationGroup;
    .locals 2

    .prologue
    .line 421
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->-get5(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->-get5(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Landroid/app/NotificationGroup;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/NotificationGroup;

    return-object v0
.end method

.method public getProfile(Landroid/os/ParcelUuid;)Lcyanogenmod/app/Profile;
    .locals 2
    .param p1, "profileParcelUuid"    # Landroid/os/ParcelUuid;

    .prologue
    .line 333
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    .line 334
    .local v0, "profileUuid":Ljava/util/UUID;
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    invoke-static {v1, v0}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->-wrap1(Lorg/cyanogenmod/platform/internal/ProfileManagerService;Ljava/util/UUID;)Lcyanogenmod/app/Profile;

    move-result-object v1

    return-object v1
.end method

.method public getProfileByName(Ljava/lang/String;)Lcyanogenmod/app/Profile;
    .locals 2
    .param p1, "profileName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 322
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->-get7(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->-get8(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->-get7(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyanogenmod/app/Profile;

    return-object v0

    .line 324
    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->-get8(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 325
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->-get8(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyanogenmod/app/Profile;

    return-object v0

    .line 327
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProfiles()[Lcyanogenmod/app/Profile;
    .locals 3

    .prologue
    .line 339
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    invoke-virtual {v1}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->getProfileList()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    invoke-static {v2}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->-get8(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Lcyanogenmod/app/Profile;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcyanogenmod/app/Profile;

    .line 340
    .local v0, "profiles":[Lcyanogenmod/app/Profile;
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 341
    return-object v0
.end method

.method public isEnabled()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 483
    invoke-static {}, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;->clearCallingIdentity()J

    move-result-wide v0

    .line 485
    .local v0, "token":J
    :try_start_0
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    invoke-static {v3}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->-get2(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 486
    const-string/jumbo v4, "system_profiles_enabled"

    .line 487
    const/4 v5, 0x1

    .line 488
    const/4 v6, -0x2

    .line 485
    invoke-static {v3, v4, v5, v6}, Lcyanogenmod/providers/CMSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-ne v3, v2, :cond_0

    .line 490
    :goto_0
    invoke-static {v0, v1}, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;->restoreCallingIdentity(J)V

    .line 485
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 489
    :catchall_0
    move-exception v2

    .line 490
    invoke-static {v0, v1}, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;->restoreCallingIdentity(J)V

    .line 489
    throw v2
.end method

.method public notificationGroupExistsByName(Ljava/lang/String;)Z
    .locals 3
    .param p1, "notificationGroupName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 411
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    invoke-static {v2}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->-get5(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "group$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationGroup;

    .line 412
    .local v0, "group":Landroid/app/NotificationGroup;
    invoke-virtual {v0}, Landroid/app/NotificationGroup;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 413
    const/4 v2, 0x1

    return v2

    .line 416
    .end local v0    # "group":Landroid/app/NotificationGroup;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public profileExists(Landroid/os/ParcelUuid;)Z
    .locals 2
    .param p1, "profileUuid"    # Landroid/os/ParcelUuid;

    .prologue
    .line 394
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->-get8(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public profileExistsByName(Ljava/lang/String;)Z
    .locals 3
    .param p1, "profileName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 400
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    invoke-static {v2}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->-get7(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 401
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/UUID;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 402
    const/4 v2, 0x1

    return v2

    .line 405
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/UUID;>;"
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public removeNotificationGroup(Landroid/app/NotificationGroup;)V
    .locals 8
    .param p1, "group"    # Landroid/app/NotificationGroup;

    .prologue
    .line 435
    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    invoke-static {v4}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->-wrap5(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)V

    .line 436
    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    invoke-static {v5}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->-get3(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Z

    move-result v6

    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    invoke-static {v4}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->-get5(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {p1}, Landroid/app/NotificationGroup;->getUuid()Ljava/util/UUID;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    or-int/2addr v4, v6

    invoke-static {v5, v4}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->-set0(Lorg/cyanogenmod/platform/internal/ProfileManagerService;Z)Z

    .line 439
    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    invoke-static {v4}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->-get8(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "profile$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyanogenmod/app/Profile;

    .line 440
    .local v0, "profile":Lcyanogenmod/app/Profile;
    invoke-virtual {p1}, Landroid/app/NotificationGroup;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcyanogenmod/app/Profile;->removeProfileGroup(Ljava/util/UUID;)V

    goto :goto_1

    .line 436
    .end local v0    # "profile":Lcyanogenmod/app/Profile;
    .end local v1    # "profile$iterator":Ljava/util/Iterator;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 442
    .restart local v1    # "profile$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-static {}, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;->clearCallingIdentity()J

    move-result-wide v2

    .line 443
    .local v2, "token":J
    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    invoke-static {v4}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->-wrap8(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)V

    .line 444
    invoke-static {v2, v3}, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;->restoreCallingIdentity(J)V

    .line 434
    return-void
.end method

.method public removeProfile(Lcyanogenmod/app/Profile;)Z
    .locals 5
    .param p1, "profile"    # Lcyanogenmod/app/Profile;

    .prologue
    const/4 v4, 0x1

    .line 355
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    invoke-static {v2}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->-wrap5(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)V

    .line 356
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    invoke-static {v2}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->-get7(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1}, Lcyanogenmod/app/Profile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 357
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    invoke-static {v2}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->-get8(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1}, Lcyanogenmod/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 358
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    invoke-static {v2, v4}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->-set0(Lorg/cyanogenmod/platform/internal/ProfileManagerService;Z)Z

    .line 359
    invoke-static {}, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;->clearCallingIdentity()J

    move-result-wide v0

    .line 360
    .local v0, "token":J
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    invoke-static {v2}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->-wrap8(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)V

    .line 361
    invoke-static {v0, v1}, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;->restoreCallingIdentity(J)V

    .line 362
    return v4

    .line 364
    .end local v0    # "token":J
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public resetAll()V
    .locals 4

    .prologue
    .line 257
    invoke-static {}, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;->clearCallingIdentity()J

    move-result-wide v0

    .line 258
    .local v0, "token":J
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    invoke-static {v2}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->-wrap5(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)V

    .line 259
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->-wrap7(Lorg/cyanogenmod/platform/internal/ProfileManagerService;Z)V

    .line 260
    invoke-static {v0, v1}, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;->restoreCallingIdentity(J)V

    .line 256
    return-void
.end method

.method public setActiveProfile(Landroid/os/ParcelUuid;)Z
    .locals 6
    .param p1, "profileParcelUuid"    # Landroid/os/ParcelUuid;

    .prologue
    .line 293
    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 294
    const-string/jumbo v1, "CMProfileService"

    const-string/jumbo v4, "Unable to set active profile because profiles are disabled."

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const/4 v1, 0x0

    return v1

    .line 303
    :cond_0
    invoke-static {}, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;->clearCallingIdentity()J

    move-result-wide v2

    .line 304
    .local v2, "token":J
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v1, v4, v5}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->-wrap0(Lorg/cyanogenmod/platform/internal/ProfileManagerService;Ljava/util/UUID;Z)Z

    move-result v0

    .line 305
    .local v0, "ret":Z
    invoke-static {v2, v3}, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;->restoreCallingIdentity(J)V

    .line 306
    return v0
.end method

.method public setActiveProfileByName(Ljava/lang/String;)Z
    .locals 7
    .param p1, "profileName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 266
    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 267
    const-string/jumbo v2, "CMProfileService"

    const-string/jumbo v3, "Unable to set active profile because profiles are disabled."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    return v5

    .line 270
    :cond_0
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    invoke-static {v2}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->-get7(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 272
    const-string/jumbo v2, "CMProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to find profile to set active, based on string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    return v5

    .line 285
    :cond_1
    invoke-static {}, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;->clearCallingIdentity()J

    move-result-wide v0

    .line 286
    .local v0, "token":J
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    invoke-static {v2}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->-get8(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Ljava/util/Map;

    move-result-object v2

    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    invoke-static {v4}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->-get7(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcyanogenmod/app/Profile;

    invoke-virtual {v3, v2, v6}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->setActiveProfileInternal(Lcyanogenmod/app/Profile;Z)V

    .line 287
    invoke-static {v0, v1}, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;->restoreCallingIdentity(J)V

    .line 288
    return v6
.end method

.method public updateNotificationGroup(Landroid/app/NotificationGroup;)V
    .locals 5
    .param p1, "group"    # Landroid/app/NotificationGroup;

    .prologue
    .line 449
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->-wrap5(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)V

    .line 450
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->-get5(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/NotificationGroup;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationGroup;

    .line 451
    .local v0, "old":Landroid/app/NotificationGroup;
    if-nez v0, :cond_0

    .line 452
    return-void

    .line 455
    :cond_0
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->-get5(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/NotificationGroup;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-interface {v1, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    invoke-static {}, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;->clearCallingIdentity()J

    move-result-wide v2

    .line 459
    .local v2, "token":J
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->-wrap8(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)V

    .line 460
    invoke-static {v2, v3}, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;->restoreCallingIdentity(J)V

    .line 448
    return-void
.end method

.method public updateProfile(Lcyanogenmod/app/Profile;)V
    .locals 6
    .param p1, "profile"    # Lcyanogenmod/app/Profile;

    .prologue
    .line 370
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->-wrap5(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)V

    .line 371
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->-get8(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcyanogenmod/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyanogenmod/app/Profile;

    .line 373
    .local v0, "old":Lcyanogenmod/app/Profile;
    if-nez v0, :cond_0

    .line 374
    return-void

    .line 377
    :cond_0
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->-get7(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0}, Lcyanogenmod/app/Profile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->-get7(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcyanogenmod/app/Profile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcyanogenmod/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->-get8(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcyanogenmod/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-interface {v1, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    invoke-static {}, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;->clearCallingIdentity()J

    move-result-wide v2

    .line 383
    .local v2, "token":J
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->-wrap8(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)V

    .line 386
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->-get0(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Lcyanogenmod/app/Profile;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->-get0(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Lcyanogenmod/app/Profile;

    move-result-object v1

    invoke-virtual {v1}, Lcyanogenmod/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {p1}, Lcyanogenmod/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 387
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    const/4 v4, 0x1

    invoke-virtual {v1, p1, v4}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->setActiveProfileInternal(Lcyanogenmod/app/Profile;Z)V

    .line 389
    :cond_1
    invoke-static {v2, v3}, Lorg/cyanogenmod/platform/internal/ProfileManagerService$5;->restoreCallingIdentity(J)V

    .line 369
    return-void
.end method
