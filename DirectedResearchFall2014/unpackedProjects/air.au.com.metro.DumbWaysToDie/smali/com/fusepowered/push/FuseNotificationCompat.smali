.class public Lcom/fusepowered/push/FuseNotificationCompat;
.super Ljava/lang/Object;
.source "FuseNotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/push/FuseNotificationCompat$Action;,
        Lcom/fusepowered/push/FuseNotificationCompat$InboxStyle;,
        Lcom/fusepowered/push/FuseNotificationCompat$BigTextStyle;,
        Lcom/fusepowered/push/FuseNotificationCompat$BigPictureStyle;,
        Lcom/fusepowered/push/FuseNotificationCompat$Style;,
        Lcom/fusepowered/push/FuseNotificationCompat$Builder;,
        Lcom/fusepowered/push/FuseNotificationCompat$NotificationCompatImplJellybean;,
        Lcom/fusepowered/push/FuseNotificationCompat$NotificationCompatImplIceCreamSandwich;,
        Lcom/fusepowered/push/FuseNotificationCompat$NotificationCompatImplHoneycomb;,
        Lcom/fusepowered/push/FuseNotificationCompat$NotificationCompatImplBase;,
        Lcom/fusepowered/push/FuseNotificationCompat$NotificationCompatImpl;
    }
.end annotation


# static fields
.field public static final FLAG_HIGH_PRIORITY:I = 0x80

.field private static final IMPL:Lcom/fusepowered/push/FuseNotificationCompat$NotificationCompatImpl; = null

.field public static final PRIORITY_DEFAULT:I = 0x0

.field public static final PRIORITY_HIGH:I = 0x1

.field public static final PRIORITY_LOW:I = -0x1

.field public static final PRIORITY_MAX:I = 0x2

.field public static final PRIORITY_MIN:I = -0x2


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 153
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 154
    new-instance v0, Lcom/fusepowered/push/FuseNotificationCompat$NotificationCompatImplJellybean;

    invoke-direct {v0}, Lcom/fusepowered/push/FuseNotificationCompat$NotificationCompatImplJellybean;-><init>()V

    sput-object v0, Lcom/fusepowered/push/FuseNotificationCompat;->IMPL:Lcom/fusepowered/push/FuseNotificationCompat$NotificationCompatImpl;

    .line 162
    :goto_0
    return-void

    .line 155
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 156
    new-instance v0, Lcom/fusepowered/push/FuseNotificationCompat$NotificationCompatImplIceCreamSandwich;

    invoke-direct {v0}, Lcom/fusepowered/push/FuseNotificationCompat$NotificationCompatImplIceCreamSandwich;-><init>()V

    sput-object v0, Lcom/fusepowered/push/FuseNotificationCompat;->IMPL:Lcom/fusepowered/push/FuseNotificationCompat$NotificationCompatImpl;

    goto :goto_0

    .line 157
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2

    .line 158
    new-instance v0, Lcom/fusepowered/push/FuseNotificationCompat$NotificationCompatImplHoneycomb;

    invoke-direct {v0}, Lcom/fusepowered/push/FuseNotificationCompat$NotificationCompatImplHoneycomb;-><init>()V

    sput-object v0, Lcom/fusepowered/push/FuseNotificationCompat;->IMPL:Lcom/fusepowered/push/FuseNotificationCompat$NotificationCompatImpl;

    goto :goto_0

    .line 160
    :cond_2
    new-instance v0, Lcom/fusepowered/push/FuseNotificationCompat$NotificationCompatImplBase;

    invoke-direct {v0}, Lcom/fusepowered/push/FuseNotificationCompat$NotificationCompatImplBase;-><init>()V

    sput-object v0, Lcom/fusepowered/push/FuseNotificationCompat;->IMPL:Lcom/fusepowered/push/FuseNotificationCompat$NotificationCompatImpl;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 819
    return-void
.end method

.method static synthetic access$000()Lcom/fusepowered/push/FuseNotificationCompat$NotificationCompatImpl;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/fusepowered/push/FuseNotificationCompat;->IMPL:Lcom/fusepowered/push/FuseNotificationCompat$NotificationCompatImpl;

    return-object v0
.end method
