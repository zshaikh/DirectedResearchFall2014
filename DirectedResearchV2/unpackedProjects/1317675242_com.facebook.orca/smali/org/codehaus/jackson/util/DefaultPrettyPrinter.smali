.class public Lorg/codehaus/jackson/util/DefaultPrettyPrinter;
.super Ljava/lang/Object;
.source "DefaultPrettyPrinter.java"

# interfaces
.implements Lorg/codehaus/jackson/PrettyPrinter;


# instance fields
.field protected a:Lorg/codehaus/jackson/impl/Indenter;

.field protected b:Lorg/codehaus/jackson/impl/Indenter;

.field protected c:Z

.field protected d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter$FixedSpaceIndenter;

    invoke-direct {v0}, Lorg/codehaus/jackson/util/DefaultPrettyPrinter$FixedSpaceIndenter;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;->a:Lorg/codehaus/jackson/impl/Indenter;

    .line 32
    new-instance v0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter$Lf2SpacesIndenter;

    invoke-direct {v0}, Lorg/codehaus/jackson/util/DefaultPrettyPrinter$Lf2SpacesIndenter;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;->b:Lorg/codehaus/jackson/impl/Indenter;

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;->c:Z

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;->d:I

    .line 57
    return-void
.end method


# virtual methods
.method public a(Lorg/codehaus/jackson/JsonGenerator;I)V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;->b:Lorg/codehaus/jackson/impl/Indenter;

    invoke-interface {v0}, Lorg/codehaus/jackson/impl/Indenter;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    iget v0, p0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;->d:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;->d:I

    .line 139
    :cond_0
    if-lez p2, :cond_1

    .line 140
    iget-object v0, p0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;->b:Lorg/codehaus/jackson/impl/Indenter;

    iget v1, p0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;->d:I

    invoke-interface {v0, p1, v1}, Lorg/codehaus/jackson/impl/Indenter;->a(Lorg/codehaus/jackson/JsonGenerator;I)V

    .line 144
    :goto_0
    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->a(C)V

    .line 145
    return-void

    .line 142
    :cond_1
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->a(C)V

    goto :goto_0
.end method

.method public b(Lorg/codehaus/jackson/JsonGenerator;I)V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;->a:Lorg/codehaus/jackson/impl/Indenter;

    invoke-interface {v0}, Lorg/codehaus/jackson/impl/Indenter;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    iget v0, p0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;->d:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;->d:I

    .line 184
    :cond_0
    if-lez p2, :cond_1

    .line 185
    iget-object v0, p0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;->a:Lorg/codehaus/jackson/impl/Indenter;

    iget v1, p0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;->d:I

    invoke-interface {v0, p1, v1}, Lorg/codehaus/jackson/impl/Indenter;->a(Lorg/codehaus/jackson/JsonGenerator;I)V

    .line 189
    :goto_0
    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->a(C)V

    .line 190
    return-void

    .line 187
    :cond_1
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->a(C)V

    goto :goto_0
.end method
