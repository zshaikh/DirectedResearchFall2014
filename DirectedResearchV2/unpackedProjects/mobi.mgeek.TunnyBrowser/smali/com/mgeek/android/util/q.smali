.class final Lcom/mgeek/android/util/q;
.super Ljava/lang/Object;
.source "PrivateModeToggleHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(ZLandroid/content/Context;)V
    .locals 0

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/mgeek/android/util/q;->a:Z

    iput-object p2, p0, Lcom/mgeek/android/util/q;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/mgeek/android/util/q;->a:Z

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/mgeek/android/util/q;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mgeek/android/util/n;->a(Landroid/content/Context;)V

    .line 94
    :cond_0
    return-void
.end method
