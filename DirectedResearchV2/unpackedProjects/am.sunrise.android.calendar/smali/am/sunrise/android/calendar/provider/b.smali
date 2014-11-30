.class Lam/sunrise/android/calendar/provider/b;
.super Ljava/lang/Object;
.source "Content.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/provider/Content;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/provider/Content;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lam/sunrise/android/calendar/provider/b;->a:Lam/sunrise/android/calendar/provider/Content;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lam/sunrise/android/calendar/provider/b;->a:Lam/sunrise/android/calendar/provider/Content;

    invoke-static {v0}, Lam/sunrise/android/calendar/provider/Content;->a(Lam/sunrise/android/calendar/provider/Content;)V

    .line 236
    return-void
.end method
