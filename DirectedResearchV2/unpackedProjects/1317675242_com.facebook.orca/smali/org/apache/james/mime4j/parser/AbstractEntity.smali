.class public abstract Lorg/apache/james/mime4j/parser/AbstractEntity;
.super Ljava/lang/Object;
.source "AbstractEntity.java"

# interfaces
.implements Lorg/apache/james/mime4j/parser/EntityStateMachine;


# static fields
.field private static final c:Ljava/util/BitSet;


# instance fields
.field protected final a:Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;

.field protected b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 60
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/parser/AbstractEntity;->c:Ljava/util/BitSet;

    .line 63
    const/16 v0, 0x21

    :goto_0
    const/16 v1, 0x39

    if-gt v0, v1, :cond_0

    .line 64
    sget-object v1, Lorg/apache/james/mime4j/parser/AbstractEntity;->c:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_0
    const/16 v0, 0x3b

    :goto_1
    const/16 v1, 0x7e

    if-gt v0, v1, :cond_1

    .line 67
    sget-object v1, Lorg/apache/james/mime4j/parser/AbstractEntity;->c:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 69
    :cond_1
    return-void
.end method

.method public static final a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 333
    packed-switch p0, :pswitch_data_0

    .line 383
    const-string v0, "Unknown"

    .line 386
    :goto_0
    return-object v0

    .line 335
    :pswitch_0
    const-string v0, "End of stream"

    goto :goto_0

    .line 338
    :pswitch_1
    const-string v0, "Start message"

    goto :goto_0

    .line 341
    :pswitch_2
    const-string v0, "End message"

    goto :goto_0

    .line 344
    :pswitch_3
    const-string v0, "Raw entity"

    goto :goto_0

    .line 347
    :pswitch_4
    const-string v0, "Start header"

    goto :goto_0

    .line 350
    :pswitch_5
    const-string v0, "Field"

    goto :goto_0

    .line 353
    :pswitch_6
    const-string v0, "End header"

    goto :goto_0

    .line 356
    :pswitch_7
    const-string v0, "Start multipart"

    goto :goto_0

    .line 359
    :pswitch_8
    const-string v0, "End multipart"

    goto :goto_0

    .line 362
    :pswitch_9
    const-string v0, "Preamble"

    goto :goto_0

    .line 365
    :pswitch_a
    const-string v0, "Epilogue"

    goto :goto_0

    .line 368
    :pswitch_b
    const-string v0, "Start bodypart"

    goto :goto_0

    .line 371
    :pswitch_c
    const-string v0, "End bodypart"

    goto :goto_0

    .line 374
    :pswitch_d
    const-string v0, "Body"

    goto :goto_0

    .line 377
    :pswitch_e
    const-string v0, "Bodypart"

    goto :goto_0

    .line 380
    :pswitch_f
    const-string v0, "In message"

    goto :goto_0

    .line 333
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->b:I

    invoke-static {v1}, Lorg/apache/james/mime4j/parser/AbstractEntity;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->a:Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;

    invoke-interface {v1}, Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->a:Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;

    invoke-interface {v1}, Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
