.class public Lorg/a/a/c/d;
.super Lorg/a/a/d;
.source "GeneralName.java"

# interfaces
.implements Lorg/a/a/c;


# instance fields
.field a:Lorg/a/a/ar;

.field b:I


# direct methods
.method public constructor <init>(ILorg/a/a/d;)V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Lorg/a/a/d;-><init>()V

    .line 117
    iput-object p2, p0, Lorg/a/a/c/d;->a:Lorg/a/a/ar;

    .line 118
    iput p1, p0, Lorg/a/a/c/d;->b:I

    .line 119
    return-void
.end method

.method public static a(Ljava/lang/Object;)Lorg/a/a/c/d;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 124
    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/a/a/c/d;

    if-eqz v0, :cond_1

    .line 126
    :cond_0
    check-cast p0, Lorg/a/a/c/d;

    .line 161
    :goto_0
    return-object p0

    .line 129
    :cond_1
    instance-of v0, p0, Lorg/a/a/x;

    if-eqz v0, :cond_2

    move-object v0, p0

    .line 131
    check-cast v0, Lorg/a/a/x;

    .line 132
    invoke-virtual {v0}, Lorg/a/a/x;->e()I

    move-result v1

    .line 134
    packed-switch v1, :pswitch_data_0

    .line 157
    :cond_2
    instance-of v0, p0, [B

    if-eqz v0, :cond_3

    .line 161
    :try_start_0
    check-cast p0, [B

    check-cast p0, [B

    invoke-static {p0}, Lorg/a/a/l;->a([B)Lorg/a/a/l;

    move-result-object v0

    invoke-static {v0}, Lorg/a/a/c/d;->a(Ljava/lang/Object;)Lorg/a/a/c/d;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 137
    :pswitch_0
    new-instance p0, Lorg/a/a/c/d;

    invoke-static {v0, v2}, Lorg/a/a/r;->a(Lorg/a/a/x;Z)Lorg/a/a/r;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lorg/a/a/c/d;-><init>(ILorg/a/a/d;)V

    goto :goto_0

    .line 139
    :pswitch_1
    new-instance p0, Lorg/a/a/c/d;

    invoke-static {v0, v2}, Lorg/a/a/az;->a(Lorg/a/a/x;Z)Lorg/a/a/az;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lorg/a/a/c/d;-><init>(ILorg/a/a/d;)V

    goto :goto_0

    .line 141
    :pswitch_2
    new-instance p0, Lorg/a/a/c/d;

    invoke-static {v0, v2}, Lorg/a/a/az;->a(Lorg/a/a/x;Z)Lorg/a/a/az;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lorg/a/a/c/d;-><init>(ILorg/a/a/d;)V

    goto :goto_0

    .line 143
    :pswitch_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :pswitch_4
    new-instance p0, Lorg/a/a/c/d;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lorg/a/a/c/g;->a(Lorg/a/a/x;Z)Lorg/a/a/c/g;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lorg/a/a/c/d;-><init>(ILorg/a/a/d;)V

    goto :goto_0

    .line 147
    :pswitch_5
    new-instance p0, Lorg/a/a/c/d;

    invoke-static {v0, v2}, Lorg/a/a/r;->a(Lorg/a/a/x;Z)Lorg/a/a/r;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lorg/a/a/c/d;-><init>(ILorg/a/a/d;)V

    goto :goto_0

    .line 149
    :pswitch_6
    new-instance p0, Lorg/a/a/c/d;

    invoke-static {v0, v2}, Lorg/a/a/az;->a(Lorg/a/a/x;Z)Lorg/a/a/az;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lorg/a/a/c/d;-><init>(ILorg/a/a/d;)V

    goto :goto_0

    .line 151
    :pswitch_7
    new-instance p0, Lorg/a/a/c/d;

    invoke-static {v0, v2}, Lorg/a/a/n;->a(Lorg/a/a/x;Z)Lorg/a/a/n;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lorg/a/a/c/d;-><init>(ILorg/a/a/d;)V

    goto :goto_0

    .line 153
    :pswitch_8
    new-instance p0, Lorg/a/a/c/d;

    invoke-static {v0, v2}, Lorg/a/a/be;->a(Lorg/a/a/x;Z)Lorg/a/a/be;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lorg/a/a/c/d;-><init>(ILorg/a/a/d;)V

    goto/16 :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 165
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unable to parse encoded general name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in getInstance: "

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

    .line 134
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public d()Lorg/a/a/bd;
    .locals 4

    .prologue
    .line 309
    iget v0, p0, Lorg/a/a/c/d;->b:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 311
    new-instance v0, Lorg/a/a/bp;

    const/4 v1, 0x1

    iget v2, p0, Lorg/a/a/c/d;->b:I

    iget-object v3, p0, Lorg/a/a/c/d;->a:Lorg/a/a/ar;

    invoke-direct {v0, v1, v2, v3}, Lorg/a/a/bp;-><init>(ZILorg/a/a/ar;)V

    .line 315
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/a/a/bp;

    const/4 v1, 0x0

    iget v2, p0, Lorg/a/a/c/d;->b:I

    iget-object v3, p0, Lorg/a/a/c/d;->a:Lorg/a/a/ar;

    invoke-direct {v0, v1, v2, v3}, Lorg/a/a/bp;-><init>(ZILorg/a/a/ar;)V

    goto :goto_0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lorg/a/a/c/d;->b:I

    return v0
.end method

.method public f()Lorg/a/a/ar;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lorg/a/a/c/d;->a:Lorg/a/a/ar;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 191
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 193
    iget v1, p0, Lorg/a/a/c/d;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 194
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    iget v1, p0, Lorg/a/a/c/d;->b:I

    packed-switch v1, :pswitch_data_0

    .line 206
    :pswitch_0
    iget-object v1, p0, Lorg/a/a/c/d;->a:Lorg/a/a/ar;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 208
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 200
    :pswitch_1
    iget-object v1, p0, Lorg/a/a/c/d;->a:Lorg/a/a/ar;

    invoke-static {v1}, Lorg/a/a/az;->a(Ljava/lang/Object;)Lorg/a/a/az;

    move-result-object v1

    invoke-virtual {v1}, Lorg/a/a/az;->s_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 203
    :pswitch_2
    iget-object v1, p0, Lorg/a/a/c/d;->a:Lorg/a/a/ar;

    invoke-static {v1}, Lorg/a/a/c/g;->a(Ljava/lang/Object;)Lorg/a/a/c/g;

    move-result-object v1

    invoke-virtual {v1}, Lorg/a/a/c/g;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 195
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
