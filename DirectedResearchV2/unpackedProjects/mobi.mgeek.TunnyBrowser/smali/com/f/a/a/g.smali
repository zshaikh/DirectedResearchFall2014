.class Lcom/f/a/a/g;
.super Landroid/os/Handler;
.source "AsyncHttpResponseHandler.java"


# instance fields
.field private final a:Lcom/f/a/a/f;


# direct methods
.method constructor <init>(Lcom/f/a/a/f;)V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 129
    iput-object p1, p0, Lcom/f/a/a/g;->a:Lcom/f/a/a/f;

    .line 130
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/f/a/a/g;->a:Lcom/f/a/a/f;

    invoke-virtual {v0, p1}, Lcom/f/a/a/f;->a(Landroid/os/Message;)V

    .line 135
    return-void
.end method
