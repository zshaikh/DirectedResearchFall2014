.class public Lcom/fusepowered/push/FuseNotificationCompat$Action;
.super Ljava/lang/Object;
.source "FuseNotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/push/FuseNotificationCompat;
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
    .parameter "icon_"
    .parameter "title_"
    .parameter "intent_"

    .prologue
    .line 824
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 825
    iput p1, p0, Lcom/fusepowered/push/FuseNotificationCompat$Action;->icon:I

    .line 826
    iput-object p2, p0, Lcom/fusepowered/push/FuseNotificationCompat$Action;->title:Ljava/lang/CharSequence;

    .line 827
    iput-object p3, p0, Lcom/fusepowered/push/FuseNotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 828
    return-void
.end method
