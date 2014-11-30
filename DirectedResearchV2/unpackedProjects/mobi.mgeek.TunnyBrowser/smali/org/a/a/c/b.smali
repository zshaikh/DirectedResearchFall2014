.class public Lorg/a/a/c/b;
.super Lorg/a/a/d;
.source "DistributionPoint.java"


# instance fields
.field a:Lorg/a/a/c/c;

.field b:Lorg/a/a/c/f;

.field c:Lorg/a/a/c/e;


# direct methods
.method public constructor <init>(Lorg/a/a/r;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Lorg/a/a/d;-><init>()V

    move v0, v1

    .line 55
    :goto_0
    invoke-virtual {p1}, Lorg/a/a/r;->f()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 57
    invoke-virtual {p1, v0}, Lorg/a/a/r;->a(I)Lorg/a/a/ar;

    move-result-object v2

    invoke-static {v2}, Lorg/a/a/x;->a(Ljava/lang/Object;)Lorg/a/a/x;

    move-result-object v2

    .line 58
    invoke-virtual {v2}, Lorg/a/a/x;->e()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 55
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    :pswitch_0
    const/4 v3, 0x1

    invoke-static {v2, v3}, Lorg/a/a/c/c;->a(Lorg/a/a/x;Z)Lorg/a/a/c/c;

    move-result-object v2

    iput-object v2, p0, Lorg/a/a/c/b;->a:Lorg/a/a/c/c;

    goto :goto_1

    .line 64
    :pswitch_1
    new-instance v3, Lorg/a/a/c/f;

    invoke-static {v2, v1}, Lorg/a/a/ap;->a(Lorg/a/a/x;Z)Lorg/a/a/ap;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/a/a/c/f;-><init>(Lorg/a/a/ap;)V

    iput-object v3, p0, Lorg/a/a/c/b;->b:Lorg/a/a/c/f;

    goto :goto_1

    .line 67
    :pswitch_2
    invoke-static {v2, v1}, Lorg/a/a/c/e;->a(Lorg/a/a/x;Z)Lorg/a/a/c/e;

    move-result-object v2

    iput-object v2, p0, Lorg/a/a/c/b;->c:Lorg/a/a/c/e;

    goto :goto_1

    .line 70
    :cond_0
    return-void

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Ljava/lang/Object;)Lorg/a/a/c/b;
    .locals 3

    .prologue
    .line 39
    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/a/a/c/b;

    if-eqz v0, :cond_1

    .line 41
    :cond_0
    check-cast p0, Lorg/a/a/c/b;

    .line 46
    :goto_0
    return-object p0

    .line 44
    :cond_1
    instance-of v0, p0, Lorg/a/a/r;

    if-eqz v0, :cond_2

    .line 46
    new-instance v0, Lorg/a/a/c/b;

    check-cast p0, Lorg/a/a/r;

    invoke-direct {v0, p0}, Lorg/a/a/c/b;-><init>(Lorg/a/a/r;)V

    move-object p0, v0

    goto :goto_0

    .line 49
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid DistributionPoint: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 147
    const-string v0, "    "

    .line 149
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 150
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 152
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 156
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    return-void
.end method


# virtual methods
.method public d()Lorg/a/a/bd;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 99
    new-instance v0, Lorg/a/a/e;

    invoke-direct {v0}, Lorg/a/a/e;-><init>()V

    .line 101
    iget-object v1, p0, Lorg/a/a/c/b;->a:Lorg/a/a/c/c;

    if-eqz v1, :cond_0

    .line 106
    new-instance v1, Lorg/a/a/bp;

    iget-object v2, p0, Lorg/a/a/c/b;->a:Lorg/a/a/c/c;

    invoke-direct {v1, v4, v2}, Lorg/a/a/bp;-><init>(ILorg/a/a/ar;)V

    invoke-virtual {v0, v1}, Lorg/a/a/e;->a(Lorg/a/a/ar;)V

    .line 109
    :cond_0
    iget-object v1, p0, Lorg/a/a/c/b;->b:Lorg/a/a/c/f;

    if-eqz v1, :cond_1

    .line 111
    new-instance v1, Lorg/a/a/bp;

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/a/a/c/b;->b:Lorg/a/a/c/f;

    invoke-direct {v1, v4, v2, v3}, Lorg/a/a/bp;-><init>(ZILorg/a/a/ar;)V

    invoke-virtual {v0, v1}, Lorg/a/a/e;->a(Lorg/a/a/ar;)V

    .line 114
    :cond_1
    iget-object v1, p0, Lorg/a/a/c/b;->c:Lorg/a/a/c/e;

    if-eqz v1, :cond_2

    .line 116
    new-instance v1, Lorg/a/a/bp;

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/a/a/c/b;->c:Lorg/a/a/c/e;

    invoke-direct {v1, v4, v2, v3}, Lorg/a/a/bp;-><init>(ZILorg/a/a/ar;)V

    invoke-virtual {v0, v1}, Lorg/a/a/e;->a(Lorg/a/a/ar;)V

    .line 119
    :cond_2
    new-instance v1, Lorg/a/a/bj;

    invoke-direct {v1, v0}, Lorg/a/a/bj;-><init>(Lorg/a/a/e;)V

    return-object v1
.end method

.method public e()Lorg/a/a/c/c;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/a/a/c/b;->a:Lorg/a/a/c/c;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 124
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 126
    const-string v2, "DistributionPoint: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    iget-object v2, p0, Lorg/a/a/c/b;->a:Lorg/a/a/c/c;

    if-eqz v2, :cond_0

    .line 130
    const-string v2, "distributionPoint"

    iget-object v3, p0, Lorg/a/a/c/b;->a:Lorg/a/a/c/c;

    invoke-virtual {v3}, Lorg/a/a/c/c;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v0, v2, v3}, Lorg/a/a/c/b;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_0
    iget-object v2, p0, Lorg/a/a/c/b;->b:Lorg/a/a/c/f;

    if-eqz v2, :cond_1

    .line 134
    const-string v2, "reasons"

    iget-object v3, p0, Lorg/a/a/c/b;->b:Lorg/a/a/c/f;

    invoke-virtual {v3}, Lorg/a/a/c/f;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v0, v2, v3}, Lorg/a/a/c/b;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_1
    iget-object v2, p0, Lorg/a/a/c/b;->c:Lorg/a/a/c/e;

    if-eqz v2, :cond_2

    .line 138
    const-string v2, "cRLIssuer"

    iget-object v3, p0, Lorg/a/a/c/b;->c:Lorg/a/a/c/e;

    invoke-virtual {v3}, Lorg/a/a/c/e;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v0, v2, v3}, Lorg/a/a/c/b;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_2
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
