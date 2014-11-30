.class Ldolphin/webkit/il;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 2548
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2549
    iput p1, p0, Ldolphin/webkit/il;->a:I

    .line 2550
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2555
    iget v0, p0, Ldolphin/webkit/il;->a:I

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->o(I)V

    .line 2556
    return-void
.end method
