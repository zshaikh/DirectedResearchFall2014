.class public Lorg/codehaus/jackson/util/DefaultPrettyPrinter$FixedSpaceIndenter;
.super Ljava/lang/Object;
.source "DefaultPrettyPrinter.java"

# interfaces
.implements Lorg/codehaus/jackson/impl/Indenter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/codehaus/jackson/JsonGenerator;I)V
    .locals 1

    .prologue
    .line 222
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->a(C)V

    .line 223
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x1

    return v0
.end method
