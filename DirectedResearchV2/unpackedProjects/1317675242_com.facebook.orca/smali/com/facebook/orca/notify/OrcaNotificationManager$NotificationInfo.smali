.class Lcom/facebook/orca/notify/OrcaNotificationManager$NotificationInfo;
.super Ljava/lang/Object;
.source "OrcaNotificationManager.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/facebook/orca/notify/OrcaNotificationManager$NotificationInfo;->a:Ljava/lang/String;

    .line 83
    iput-object p2, p0, Lcom/facebook/orca/notify/OrcaNotificationManager$NotificationInfo;->b:Ljava/lang/String;

    .line 84
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/notify/OrcaNotificationManager$NotificationInfo;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager$NotificationInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/orca/notify/OrcaNotificationManager$NotificationInfo;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager$NotificationInfo;->b:Ljava/lang/String;

    return-object v0
.end method
