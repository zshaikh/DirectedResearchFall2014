.class final Lcom/dolphin/browser/javascript/f;
.super Ljava/lang/Object;
.source "JavaScriptObject.java"


# instance fields
.field final a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/dolphin/browser/javascript/f;->a:Ljava/lang/String;

    .line 9
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/dolphin/browser/javascript/f;
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/dolphin/browser/javascript/f;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/javascript/f;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/dolphin/browser/javascript/f;->a:Ljava/lang/String;

    return-object v0
.end method
