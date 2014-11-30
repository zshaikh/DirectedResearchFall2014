.class public Lcom/facebook/orca/protocol/methods/SendMessageMethod$Params;
.super Ljava/lang/Object;
.source "SendMessageMethod.java"


# instance fields
.field private final a:Lcom/facebook/orca/threads/Message;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/threads/Message;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/facebook/orca/protocol/methods/SendMessageMethod$Params;->a:Lcom/facebook/orca/threads/Message;

    .line 35
    iput-object p2, p0, Lcom/facebook/orca/protocol/methods/SendMessageMethod$Params;->b:Ljava/lang/String;

    .line 36
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/protocol/methods/SendMessageMethod$Params;)Lcom/facebook/orca/threads/Message;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/facebook/orca/protocol/methods/SendMessageMethod$Params;->a:Lcom/facebook/orca/threads/Message;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/orca/protocol/methods/SendMessageMethod$Params;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/facebook/orca/protocol/methods/SendMessageMethod$Params;->b:Ljava/lang/String;

    return-object v0
.end method
