.class public Landroid/support/v4/app/ak;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# instance fields
.field public a:I

.field public b:Ljava/lang/CharSequence;

.field public c:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 0

    .prologue
    .line 824
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 825
    iput p1, p0, Landroid/support/v4/app/ak;->a:I

    .line 826
    iput-object p2, p0, Landroid/support/v4/app/ak;->b:Ljava/lang/CharSequence;

    .line 827
    iput-object p3, p0, Landroid/support/v4/app/ak;->c:Landroid/app/PendingIntent;

    .line 828
    return-void
.end method
