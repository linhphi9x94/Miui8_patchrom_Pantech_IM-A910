.class public abstract Lcyanogenmod/externalviews/IKeyguardExternalViewProvider$Stub;
.super Landroid/os/Binder;
.source "IKeyguardExternalViewProvider.java"

# interfaces
.implements Lcyanogenmod/externalviews/IKeyguardExternalViewProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/externalviews/IKeyguardExternalViewProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/externalviews/IKeyguardExternalViewProvider$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "cyanogenmod.externalviews.IKeyguardExternalViewProvider"

.field static final TRANSACTION_alterWindow:I = 0xa

.field static final TRANSACTION_onAttach:I = 0x1

.field static final TRANSACTION_onBouncerShowing:I = 0x5

.field static final TRANSACTION_onDetach:I = 0x2

.field static final TRANSACTION_onKeyguardDismissed:I = 0x4

.field static final TRANSACTION_onKeyguardShowing:I = 0x3

.field static final TRANSACTION_onLockscreenSlideOffsetChanged:I = 0xb

.field static final TRANSACTION_onScreenTurnedOff:I = 0x7

.field static final TRANSACTION_onScreenTurnedOn:I = 0x6

.field static final TRANSACTION_registerCallback:I = 0x8

.field static final TRANSACTION_unregisterCallback:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "cyanogenmod.externalviews.IKeyguardExternalViewProvider"

    invoke-virtual {p0, p0, v0}, Lcyanogenmod/externalviews/IKeyguardExternalViewProvider$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcyanogenmod/externalviews/IKeyguardExternalViewProvider;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 24
    if-nez p0, :cond_0

    .line 25
    return-object v1

    .line 27
    :cond_0
    const-string/jumbo v1, "cyanogenmod.externalviews.IKeyguardExternalViewProvider"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcyanogenmod/externalviews/IKeyguardExternalViewProvider;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcyanogenmod/externalviews/IKeyguardExternalViewProvider;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcyanogenmod/externalviews/IKeyguardExternalViewProvider$Stub$Proxy;

    invoke-direct {v1, p0}, Lcyanogenmod/externalviews/IKeyguardExternalViewProvider$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 143
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 43
    :sswitch_0
    const-string/jumbo v0, "cyanogenmod.externalviews.IKeyguardExternalViewProvider"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/4 v0, 0x1

    return v0

    .line 48
    :sswitch_1
    const-string/jumbo v0, "cyanogenmod.externalviews.IKeyguardExternalViewProvider"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    .line 51
    .local v8, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v8}, Lcyanogenmod/externalviews/IKeyguardExternalViewProvider$Stub;->onAttach(Landroid/os/IBinder;)V

    .line 52
    const/4 v0, 0x1

    return v0

    .line 56
    .end local v8    # "_arg0":Landroid/os/IBinder;
    :sswitch_2
    const-string/jumbo v0, "cyanogenmod.externalviews.IKeyguardExternalViewProvider"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcyanogenmod/externalviews/IKeyguardExternalViewProvider$Stub;->onDetach()V

    .line 58
    const/4 v0, 0x1

    return v0

    .line 62
    :sswitch_3
    const-string/jumbo v0, "cyanogenmod.externalviews.IKeyguardExternalViewProvider"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v10, 0x1

    .line 65
    .local v10, "_arg0":Z
    :goto_0
    invoke-virtual {p0, v10}, Lcyanogenmod/externalviews/IKeyguardExternalViewProvider$Stub;->onKeyguardShowing(Z)V

    .line 66
    const/4 v0, 0x1

    return v0

    .line 64
    .end local v10    # "_arg0":Z
    :cond_0
    const/4 v10, 0x0

    .restart local v10    # "_arg0":Z
    goto :goto_0

    .line 70
    .end local v10    # "_arg0":Z
    :sswitch_4
    const-string/jumbo v0, "cyanogenmod.externalviews.IKeyguardExternalViewProvider"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcyanogenmod/externalviews/IKeyguardExternalViewProvider$Stub;->onKeyguardDismissed()V

    .line 72
    const/4 v0, 0x1

    return v0

    .line 76
    :sswitch_5
    const-string/jumbo v0, "cyanogenmod.externalviews.IKeyguardExternalViewProvider"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v10, 0x1

    .line 79
    .restart local v10    # "_arg0":Z
    :goto_1
    invoke-virtual {p0, v10}, Lcyanogenmod/externalviews/IKeyguardExternalViewProvider$Stub;->onBouncerShowing(Z)V

    .line 80
    const/4 v0, 0x1

    return v0

    .line 78
    .end local v10    # "_arg0":Z
    :cond_1
    const/4 v10, 0x0

    .restart local v10    # "_arg0":Z
    goto :goto_1

    .line 84
    .end local v10    # "_arg0":Z
    :sswitch_6
    const-string/jumbo v0, "cyanogenmod.externalviews.IKeyguardExternalViewProvider"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcyanogenmod/externalviews/IKeyguardExternalViewProvider$Stub;->onScreenTurnedOn()V

    .line 86
    const/4 v0, 0x1

    return v0

    .line 90
    :sswitch_7
    const-string/jumbo v0, "cyanogenmod.externalviews.IKeyguardExternalViewProvider"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcyanogenmod/externalviews/IKeyguardExternalViewProvider$Stub;->onScreenTurnedOff()V

    .line 92
    const/4 v0, 0x1

    return v0

    .line 96
    :sswitch_8
    const-string/jumbo v0, "cyanogenmod.externalviews.IKeyguardExternalViewProvider"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;

    move-result-object v9

    .line 99
    .local v9, "_arg0":Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;
    invoke-virtual {p0, v9}, Lcyanogenmod/externalviews/IKeyguardExternalViewProvider$Stub;->registerCallback(Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;)V

    .line 100
    const/4 v0, 0x1

    return v0

    .line 104
    .end local v9    # "_arg0":Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;
    :sswitch_9
    const-string/jumbo v0, "cyanogenmod.externalviews.IKeyguardExternalViewProvider"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;

    move-result-object v9

    .line 107
    .restart local v9    # "_arg0":Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;
    invoke-virtual {p0, v9}, Lcyanogenmod/externalviews/IKeyguardExternalViewProvider$Stub;->unregisterCallback(Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;)V

    .line 108
    const/4 v0, 0x1

    return v0

    .line 112
    .end local v9    # "_arg0":Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;
    :sswitch_a
    const-string/jumbo v0, "cyanogenmod.externalviews.IKeyguardExternalViewProvider"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 116
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 118
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 120
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 122
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v5, 0x1

    .line 124
    .local v5, "_arg4":Z
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 125
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    :goto_3
    move-object v0, p0

    .line 130
    invoke-virtual/range {v0 .. v6}, Lcyanogenmod/externalviews/IKeyguardExternalViewProvider$Stub;->alterWindow(IIIIZLandroid/graphics/Rect;)V

    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    const/4 v0, 0x1

    return v0

    .line 122
    .end local v5    # "_arg4":Z
    :cond_2
    const/4 v5, 0x0

    .restart local v5    # "_arg4":Z
    goto :goto_2

    .line 128
    :cond_3
    const/4 v6, 0x0

    .local v6, "_arg5":Landroid/graphics/Rect;
    goto :goto_3

    .line 136
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Z
    .end local v6    # "_arg5":Landroid/graphics/Rect;
    :sswitch_b
    const-string/jumbo v0, "cyanogenmod.externalviews.IKeyguardExternalViewProvider"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    .line 139
    .local v7, "_arg0":F
    invoke-virtual {p0, v7}, Lcyanogenmod/externalviews/IKeyguardExternalViewProvider$Stub;->onLockscreenSlideOffsetChanged(F)V

    .line 140
    const/4 v0, 0x1

    return v0

    .line 39
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
