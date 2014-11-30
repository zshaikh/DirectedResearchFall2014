.class Lcom/dolphin/browser/message/d;
.super Ljava/lang/Thread;
.source "MessageService.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/message/MessageService;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/message/MessageService;Z)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/dolphin/browser/message/d;->a:Lcom/dolphin/browser/message/MessageService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 87
    iput-boolean p2, p0, Lcom/dolphin/browser/message/d;->b:Z

    .line 88
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/dolphin/browser/message/d;->a:Lcom/dolphin/browser/message/MessageService;

    iget-boolean v1, p0, Lcom/dolphin/browser/message/d;->b:Z

    invoke-static {v0, v1}, Lcom/dolphin/browser/message/MessageService;->a(Lcom/dolphin/browser/message/MessageService;Z)V

    .line 94
    iget-object v0, p0, Lcom/dolphin/browser/message/d;->a:Lcom/dolphin/browser/message/MessageService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dolphin/browser/message/MessageService;->a(Lcom/dolphin/browser/message/MessageService;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 95
    return-void
.end method
