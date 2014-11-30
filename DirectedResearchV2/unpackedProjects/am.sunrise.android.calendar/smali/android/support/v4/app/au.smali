.class public abstract Landroid/support/v4/app/au;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# instance fields
.field d:Landroid/support/v4/app/an;

.field e:Ljava/lang/CharSequence;

.field f:Ljava/lang/CharSequence;

.field g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 606
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 611
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/au;->g:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/an;)V
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Landroid/support/v4/app/au;->d:Landroid/support/v4/app/an;

    if-eq v0, p1, :cond_0

    .line 615
    iput-object p1, p0, Landroid/support/v4/app/au;->d:Landroid/support/v4/app/an;

    .line 616
    iget-object v0, p0, Landroid/support/v4/app/au;->d:Landroid/support/v4/app/an;

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Landroid/support/v4/app/au;->d:Landroid/support/v4/app/an;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/an;->a(Landroid/support/v4/app/au;)Landroid/support/v4/app/an;

    .line 620
    :cond_0
    return-void
.end method
