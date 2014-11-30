.class public Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Action;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stuv/ane/pushnotif/v4/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation


# instance fields
.field public actionIntent:Landroid/app/PendingIntent;

.field public icon:I

.field public title:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "icon_"    # I
    .param p2, "title_"    # Ljava/lang/CharSequence;
    .param p3, "intent_"    # Landroid/app/PendingIntent;

    .prologue
    .line 811
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 812
    iput p1, p0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Action;->icon:I

    .line 813
    iput-object p2, p0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    .line 814
    iput-object p3, p0, Lcom/stuv/ane/pushnotif/v4/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 815
    return-void
.end method
