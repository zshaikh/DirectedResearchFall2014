.class final Lcom/mgeek/android/util/o;
.super Ljava/lang/Object;
.source "PrivateModeToggleHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/mgeek/android/util/o;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 71
    invoke-static {}, Lcom/mgeek/android/util/n;->a()V

    .line 72
    iget-object v0, p0, Lcom/mgeek/android/util/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mgeek/android/util/n;->a(Landroid/content/Context;)V

    .line 73
    return-void
.end method
