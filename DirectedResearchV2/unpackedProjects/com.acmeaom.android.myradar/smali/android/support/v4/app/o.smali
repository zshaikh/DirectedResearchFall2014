.class Landroid/support/v4/app/o;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v4/app/n;


# direct methods
.method constructor <init>(Landroid/support/v4/app/n;)V
    .locals 0

    .prologue
    .line 437
    iput-object p1, p0, Landroid/support/v4/app/o;->a:Landroid/support/v4/app/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Landroid/support/v4/app/o;->a:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->e()Z

    .line 441
    return-void
.end method
