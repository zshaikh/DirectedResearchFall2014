.class final Lcom/mgeek/android/util/p;
.super Ljava/lang/Object;
.source "PrivateModeToggleHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 81
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 82
    return-void
.end method
