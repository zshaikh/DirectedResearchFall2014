.class public Lorg/codehaus/jackson/util/MinimalPrettyPrinter;
.super Ljava/lang/Object;
.source "MinimalPrettyPrinter.java"

# interfaces
.implements Lorg/codehaus/jackson/PrettyPrinter;


# instance fields
.field protected a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, " "

    iput-object v0, p0, Lorg/codehaus/jackson/util/MinimalPrettyPrinter;->a:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public a(Lorg/codehaus/jackson/JsonGenerator;I)V
    .locals 1

    .prologue
    .line 101
    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->a(C)V

    .line 102
    return-void
.end method

.method public b(Lorg/codehaus/jackson/JsonGenerator;I)V
    .locals 1

    .prologue
    .line 132
    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->a(C)V

    .line 133
    return-void
.end method
