package com.elsevier.tsconfig.web;

import com.elsevier.tsconfig.domain.Providerlistitemfacet;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/providerlistitemfacets")
@Controller
@RooWebScaffold(path = "providerlistitemfacets", formBackingObject = Providerlistitemfacet.class)
public class ProviderlistitemfacetController {
}
