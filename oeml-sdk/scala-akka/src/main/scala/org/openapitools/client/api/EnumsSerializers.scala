/**
 * OEML - REST API
 * This section will provide necessary information about the `CoinAPI OEML REST API` protocol. <br/> This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       <br/><br/> Implemented Standards:   * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)  * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)  * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540) 
 *
 * The version of the OpenAPI document: v1
 * Contact: support@coinapi.io
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */
package org.openapitools.client.api

import org.openapitools.client.model._
import org.json4s._
import scala.reflect.ClassTag

object EnumsSerializers {

  def all: Seq[Serializer[_]] = Seq[Serializer[_]]() :+
    new EnumNameSerializer(BalanceDataEnums.LastUpdatedBy) :+
    new EnumNameSerializer(OrderExecutionReportEnums.Seq[ExecInst]) :+
    new EnumNameSerializer(OrderNewSingleRequestEnums.Seq[ExecInst])

  private class EnumNameSerializer[E <: Enumeration: ClassTag](enum: E)
    extends Serializer[E#Value] {
    import JsonDSL._

    val EnumerationClass: Class[E#Value] = classOf[E#Value]

    def deserialize(implicit format: Formats):
    PartialFunction[(TypeInfo, JValue), E#Value] = {
      case (t @ TypeInfo(EnumerationClass, _), json) if isValid(json) =>
        json match {
          case JString(value) =>
            enum.withName(value)
          case value =>
            throw new MappingException(s"Can't convert $value to $EnumerationClass")
        }
    }

    private[this] def isValid(json: JValue) = json match {
      case JString(value) if enum.values.exists(_.toString == value) => true
      case _ => false
    }

    def serialize(implicit format: Formats): PartialFunction[Any, JValue] = {
      case i: E#Value => i.toString
    }
  }

}
