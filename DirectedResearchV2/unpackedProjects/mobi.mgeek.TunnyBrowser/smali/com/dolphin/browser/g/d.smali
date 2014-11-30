.class Lcom/dolphin/browser/g/d;
.super Ljava/util/TimerTask;
.source "GpsTask.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/g/b;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/g/b;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/dolphin/browser/g/d;->a:Lcom/dolphin/browser/g/b;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/dolphin/browser/g/d;->a:Lcom/dolphin/browser/g/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dolphin/browser/g/b;->b(Lcom/dolphin/browser/g/b;Z)Z

    .line 121
    return-void
.end method
