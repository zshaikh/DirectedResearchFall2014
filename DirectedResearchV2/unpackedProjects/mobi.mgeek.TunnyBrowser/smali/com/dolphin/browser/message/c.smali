.class Lcom/dolphin/browser/message/c;
.super Ljava/lang/Thread;
.source "C2DMService.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/message/C2DMService;


# direct methods
.method private constructor <init>(Lcom/dolphin/browser/message/C2DMService;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/dolphin/browser/message/c;->a:Lcom/dolphin/browser/message/C2DMService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/message/C2DMService;Lcom/dolphin/browser/message/b;)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/dolphin/browser/message/c;-><init>(Lcom/dolphin/browser/message/C2DMService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/dolphin/browser/message/c;->a:Lcom/dolphin/browser/message/C2DMService;

    invoke-static {v0}, Lcom/dolphin/browser/message/C2DMService;->a(Lcom/dolphin/browser/message/C2DMService;)V

    .line 99
    iget-object v0, p0, Lcom/dolphin/browser/message/c;->a:Lcom/dolphin/browser/message/C2DMService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dolphin/browser/message/C2DMService;->a(Lcom/dolphin/browser/message/C2DMService;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 100
    return-void
.end method
