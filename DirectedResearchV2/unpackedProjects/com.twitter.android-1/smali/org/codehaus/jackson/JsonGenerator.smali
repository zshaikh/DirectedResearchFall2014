.class public abstract Lorg/codehaus/jackson/JsonGenerator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field protected a:Lorg/codehaus/jackson/b;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(I)V
.end method

.method public abstract a(J)V
.end method

.method public abstract a(Ljava/lang/String;)V
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lorg/codehaus/jackson/JsonGenerator;->a(I)V

    return-void
.end method

.method public final a(Ljava/lang/String;J)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Lorg/codehaus/jackson/JsonGenerator;->a(J)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lorg/codehaus/jackson/JsonGenerator;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lorg/codehaus/jackson/JsonGenerator;->a(Z)V

    return-void
.end method

.method public abstract a(Z)V
.end method

.method public abstract b()V
.end method

.method public abstract b(Ljava/lang/String;)V
.end method

.method public abstract c()V
.end method

.method public abstract d()V
.end method

.method public abstract e()V
.end method
